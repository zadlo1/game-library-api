import { Component, OnInit } from '@angular/core';
import { UserService, UserListItem } from '../../../core/services/user.service';

@Component({
  selector: 'app-admin-panel',
  templateUrl: './admin-panel.component.html',
  styleUrls: ['./admin-panel.component.scss']
})
export class AdminPanelComponent implements OnInit {
  users: UserListItem[] = [];
  loading = true;
  error = '';

  constructor(private userService: UserService) {}

  ngOnInit() {
    this.loadUsers();
  }

  loadUsers() {
    this.loading = true;
    this.userService.getAllUsers().subscribe({
      next: users => {
        this.users = users;
        this.loading = false;
      },
      error: () => {
        this.error = 'Nie udało się wczytać użytkowników.';
        this.loading = false;
      }
    });
  }

  deleteUser(user: UserListItem) {
    if (!confirm(`Zbanować użytkownika ${user.username}? Wszystkie jego dane zostaną usunięte.`)) return;
    this.userService.deleteUser(user.id).subscribe(() => {
      alert(`Użytkownik ${user.username} został zbanowany.`);
      this.loadUsers();
    });
  }
}
