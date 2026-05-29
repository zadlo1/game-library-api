import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface UserListItem {
  id: number;
  username: string;
  role: string;
}

@Injectable({ providedIn: 'root' })
export class UserService {
  private readonly API = 'http://localhost:8080/api/admin/users';

  constructor(private http: HttpClient) {}

  getAllUsers(): Observable<UserListItem[]> {
    return this.http.get<UserListItem[]>(this.API);
  }

  deleteUser(userId: number): Observable<void> {
    return this.http.delete<void>(`${this.API}/${userId}`);
  }
}
