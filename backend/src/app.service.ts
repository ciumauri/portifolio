import { Injectable } from '@nestjs/common';
import { Id, Technology } from '@core';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Legal... ' + Id.new();
  }
}
