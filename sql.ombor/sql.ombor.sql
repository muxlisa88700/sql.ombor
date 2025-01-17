PGDMP             
            |            ombor    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    82870    ombor    DATABASE     i   CREATE DATABASE ombor WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE ombor;
                postgres    false            �            1259    82891    kirim_chiqim    TABLE       CREATE TABLE public.kirim_chiqim (
    id integer NOT NULL,
    kirim character varying(100) NOT NULL,
    chiqim character varying(100) NOT NULL,
    id_ombor integer,
    id_tovar integer,
    id_mijoz integer,
    id_yetkazib_berish integer,
    sana date,
    soni integer
);
     DROP TABLE public.kirim_chiqim;
       public         heap    postgres    false            �            1259    82881    mijoz    TABLE     �   CREATE TABLE public.mijoz (
    id integer NOT NULL,
    familya_ism character varying(50) NOT NULL,
    telefon character varying(20) NOT NULL,
    manzil character varying(100) NOT NULL
);
    DROP TABLE public.mijoz;
       public         heap    postgres    false            �            1259    82871    ombor    TABLE     �   CREATE TABLE public.ombor (
    id integer NOT NULL,
    ism character varying(50) NOT NULL,
    hodim character varying(50) NOT NULL,
    filyal_nomi character varying(100)
);
    DROP TABLE public.ombor;
       public         heap    postgres    false            �            1259    82886    tovar    TABLE     |   CREATE TABLE public.tovar (
    id integer NOT NULL,
    nomi character varying(50) NOT NULL,
    narxi integer NOT NULL
);
    DROP TABLE public.tovar;
       public         heap    postgres    false            �            1259    82876    yetkazib_berish    TABLE     �   CREATE TABLE public.yetkazib_berish (
    id integer NOT NULL,
    ism character varying(100) NOT NULL,
    manzil character varying(100) NOT NULL,
    telefon character varying(20) NOT NULL
);
 #   DROP TABLE public.yetkazib_berish;
       public         heap    postgres    false                      0    82891    kirim_chiqim 
   TABLE DATA           w   COPY public.kirim_chiqim (id, kirim, chiqim, id_ombor, id_tovar, id_mijoz, id_yetkazib_berish, sana, soni) FROM stdin;
    public          postgres    false    213   �                 0    82881    mijoz 
   TABLE DATA           A   COPY public.mijoz (id, familya_ism, telefon, manzil) FROM stdin;
    public          postgres    false    211   �                 0    82871    ombor 
   TABLE DATA           <   COPY public.ombor (id, ism, hodim, filyal_nomi) FROM stdin;
    public          postgres    false    209   �                 0    82886    tovar 
   TABLE DATA           0   COPY public.tovar (id, nomi, narxi) FROM stdin;
    public          postgres    false    212   3                 0    82876    yetkazib_berish 
   TABLE DATA           C   COPY public.yetkazib_berish (id, ism, manzil, telefon) FROM stdin;
    public          postgres    false    210   -       t           2606    82895    kirim_chiqim kirim_chiqim_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.kirim_chiqim
    ADD CONSTRAINT kirim_chiqim_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.kirim_chiqim DROP CONSTRAINT kirim_chiqim_pkey;
       public            postgres    false    213            p           2606    82885    mijoz mijoz_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.mijoz
    ADD CONSTRAINT mijoz_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.mijoz DROP CONSTRAINT mijoz_pkey;
       public            postgres    false    211            l           2606    82875    ombor ombor_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.ombor
    ADD CONSTRAINT ombor_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.ombor DROP CONSTRAINT ombor_pkey;
       public            postgres    false    209            r           2606    82890    tovar tovar_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tovar
    ADD CONSTRAINT tovar_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tovar DROP CONSTRAINT tovar_pkey;
       public            postgres    false    212            n           2606    82880 $   yetkazib_berish yetkazib_berish_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.yetkazib_berish
    ADD CONSTRAINT yetkazib_berish_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.yetkazib_berish DROP CONSTRAINT yetkazib_berish_pkey;
       public            postgres    false    210            w           2606    82906 '   kirim_chiqim kirim_chiqim_id_mijoz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kirim_chiqim
    ADD CONSTRAINT kirim_chiqim_id_mijoz_fkey FOREIGN KEY (id_mijoz) REFERENCES public.mijoz(id);
 Q   ALTER TABLE ONLY public.kirim_chiqim DROP CONSTRAINT kirim_chiqim_id_mijoz_fkey;
       public          postgres    false    3184    213    211            u           2606    82896 '   kirim_chiqim kirim_chiqim_id_ombor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kirim_chiqim
    ADD CONSTRAINT kirim_chiqim_id_ombor_fkey FOREIGN KEY (id_ombor) REFERENCES public.ombor(id);
 Q   ALTER TABLE ONLY public.kirim_chiqim DROP CONSTRAINT kirim_chiqim_id_ombor_fkey;
       public          postgres    false    213    209    3180            v           2606    82901 '   kirim_chiqim kirim_chiqim_id_tovar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kirim_chiqim
    ADD CONSTRAINT kirim_chiqim_id_tovar_fkey FOREIGN KEY (id_tovar) REFERENCES public.tovar(id);
 Q   ALTER TABLE ONLY public.kirim_chiqim DROP CONSTRAINT kirim_chiqim_id_tovar_fkey;
       public          postgres    false    3186    213    212            x           2606    82911 1   kirim_chiqim kirim_chiqim_id_yetkazib_berish_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kirim_chiqim
    ADD CONSTRAINT kirim_chiqim_id_yetkazib_berish_fkey FOREIGN KEY (id_yetkazib_berish) REFERENCES public.yetkazib_berish(id);
 [   ALTER TABLE ONLY public.kirim_chiqim DROP CONSTRAINT kirim_chiqim_id_yetkazib_berish_fkey;
       public          postgres    false    210    3182    213               �   x�m�I�0D�p�� �]���h@P7j���HP��aA�\X>e}���U��D�D	��@���v���#�+�1�g�_��x��afd旣
뉨�<1Rpی��,5q�䭗��Љ�ˬ��f3�X]�;c�����̢�H#B�6��ff�a+�i1�� A.G�~թ5dzg�s����4&�Ų�?��������څݺ�}���cq         �   x�U�A��0�uz��"'N�����Q�Hk)i��(jY���/u�������'��E�~�M��r�b]�.g��H$C"�F�>�k)2��9�3�qj֍k��GG��Z�R%�FD{��R^V`�0;@�6�-�A�`�Ix�C�)�+�{��Fb'���K���%z �ER��%=�����0< �P`}         �   x�m���0Eg�c,�`FBBNS�4鐯��D��Ϲ�5DLŒB�w�p�1'���
�nYiI� c!V��*�f;em�qs���%�z�|���>H�
{P�)e]�x`�]���V�H����A��|���'葬�#?����1޳i�         �   x�5�]r� ���)|��������DL�I���d���+	���D�C_�'���u�d�"AÍnd�_��[\)"�� }�n��d	&.�`�{��|�_Z����� �����Kq���냼{%�%d�z�=�òQH	?���o�l��Q�A�<![�j�5��Ew�����^��=������=�F� �}hd����&�g���#O���,�aJ߻�W|]��Ypm�         j   x�m�A
�  ����b)Sӿt12J3!���}`F�lL������1�\	��d|o�3�i�$2Aķ溷@��'3	�ϻ�����ՅV2�>��8�     