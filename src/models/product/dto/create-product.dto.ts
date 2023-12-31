import { OmitType } from '@nestjs/swagger';
import { Decimal } from '@prisma/client/runtime';
import {
  IsArray,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
} from 'class-validator';
import { Product } from '../entities/product.entity';

/** Describes the fields needed to create a Product */
export class CreateProductDto extends OmitType(Product, [
  'id',
  'createdAt',
  'urlName',
  'picture',
  'modelUrl',
] as const) {
  /**
   * Product name
   * @example "Brand black wheelchair"
   */
  @IsString()
  @IsNotEmpty()
  name: string;

  /**
   * Product price not considering discounts.
   * Saved as decimal, calculations should be handled
   * with currency.js
   * @example 70.00
   */
  @IsNumber()
  @IsNotEmpty()
  basePrice: string | number | Decimal;

  /**
   * Product discount in percentage. Defaults to 0
   * @example 10
   */
  @IsNumber()
  @IsOptional()
  discountPercentage?: number;

  /**
   * Product description
   * @example "Black wheelchair for offices"
   */
  @IsString()
  @IsOptional()
  description?: string;

  /**
   * Product picture
   * @example "https://http2.mlstatic.com/D_NQ_NP_2X_945889-MLB46671431111_072021-F.webp"
   */
  @IsString()
  @IsOptional()
  picture?: string;

  /**
   * Product 3D Model
   * @example "https://model-3d.stl"
   */
  @IsString()
  @IsOptional()
  modelUrl?: string;

  /**
   * Category IDs
   * @example ["857cd575-956b-49f3-a75e-2e651e21b871", "fa244865-0878-4688-ac63-e3ecf4939a89"]
   */
  @IsOptional()
  @IsArray()
  categories?: string[];
}
