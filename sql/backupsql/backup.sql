PGDMP  '                    |            minidatabase    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    minidatabase    DATABASE     �   CREATE DATABASE minidatabase WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE minidatabase;
                postgres    false            �            1259    16399    customer    TABLE     h   CREATE TABLE public.customer (
    "ID" character(8) NOT NULL,
    name character(20),
    date date
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �           0    0    TABLE customer    ACL     0   GRANT SELECT ON TABLE public.customer TO thanh;
          public          postgres    false    215            �            1259    16404    order    TABLE     ^   CREATE TABLE public."order" (
    a "char" NOT NULL,
    b character varying,
    c "char"
);
    DROP TABLE public."order";
       public         heap    postgres    false            �            1259    16411    product    TABLE     S   CREATE TABLE public.product (
    x "char" NOT NULL,
    y "char",
    z "char"
);
    DROP TABLE public.product;
       public         heap    postgres    false            �          0    16399    customer 
   TABLE DATA           4   COPY public.customer ("ID", name, date) FROM stdin;
    public          postgres    false    215   �       �          0    16404    order 
   TABLE DATA           *   COPY public."order" (a, b, c) FROM stdin;
    public          postgres    false    216   �       �          0    16411    product 
   TABLE DATA           *   COPY public.product (x, y, z) FROM stdin;
    public          postgres    false    217           X           2606    16424    customer customer_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    215            Z           2606    16410    order order_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (a);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public            postgres    false    216            \           2606    16415    product product_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (x);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    217            �   )   x�32022573�,�H��P@�F&��F\1z\\\ ��=      �      x������ � �      �      x������ � �     