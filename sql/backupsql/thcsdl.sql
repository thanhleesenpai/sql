PGDMP  
                     |            thcsdl    16.2    16.2 !               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17277    thcsdl    DATABASE     �   CREATE DATABASE thcsdl WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE thcsdl;
                postgres    false            �            1259    17589    Ban_hang    TABLE     �   CREATE TABLE public."Ban_hang" (
    "Ma_hoa_don" character(10) NOT NULL,
    "Ma_hang_hoa" character(10) NOT NULL,
    "So_luong_ban" integer NOT NULL
);
    DROP TABLE public."Ban_hang";
       public         heap    postgres    false            �            1259    17572    Hang_hoa    TABLE     1  CREATE TABLE public."Hang_hoa" (
    "Ma_hang_hoa" character(50) NOT NULL,
    "Ten_hang_hoa" character(50) NOT NULL,
    "Kich_thuoc" integer NOT NULL,
    "So_luong" integer NOT NULL,
    "Loai_hang_hoa" character(50) NOT NULL,
    "Don_gia_nhap" integer NOT NULL,
    "Don_gia_ban" integer NOT NULL
);
    DROP TABLE public."Hang_hoa";
       public         heap    postgres    false            �            1259    17327    Hoa_don_ban_hang    TABLE     �   CREATE TABLE public."Hoa_don_ban_hang" (
    "Ma_hoa_don" character(10) NOT NULL,
    "Ngay_ban" date NOT NULL,
    "Phuong_thuc_thanh_toan" character(20) NOT NULL,
    "Ma_nhan_vien" character(10) NOT NULL,
    "Ma_khach_hang" character(10) NOT NULL
);
 &   DROP TABLE public."Hoa_don_ban_hang";
       public         heap    postgres    false            �            1259    17283 
   Khach_hang    TABLE     �   CREATE TABLE public."Khach_hang" (
    "Ma_khach_hang" character(10) NOT NULL,
    "Ten_khach_hang" character(50) NOT NULL,
    "Gmail" character(50) NOT NULL,
    "So_dien_thoai" character(10) NOT NULL,
    "Dia_chi" character(50) NOT NULL
);
     DROP TABLE public."Khach_hang";
       public         heap    postgres    false            �            1259    17322    Nhan_vien_ban_hang    TABLE     0  CREATE TABLE public."Nhan_vien_ban_hang" (
    "Ma_nhan_vien" character(10) NOT NULL,
    "Ho" character(50) NOT NULL,
    "Ten" character(50) NOT NULL,
    "Ngay_sinh" date NOT NULL,
    "So_dien_thoai" character(10) NOT NULL,
    "Dia_chi" character(50) NOT NULL,
    "Ca_lam_viec" integer NOT NULL
);
 (   DROP TABLE public."Nhan_vien_ban_hang";
       public         heap    postgres    false            �            1259    17332    Phieu_tra_hang    TABLE     �   CREATE TABLE public."Phieu_tra_hang" (
    "Ma_tra_hang" character(10) NOT NULL,
    "Ngay_tra" date NOT NULL,
    "Li_do_tra" character(50) NOT NULL,
    "Ma_nhan_vien" character(10) NOT NULL,
    "Ma_hoa_don" character(10) NOT NULL
);
 $   DROP TABLE public."Phieu_tra_hang";
       public         heap    postgres    false            �            1259    17560    Tra_hang    TABLE     �   CREATE TABLE public."Tra_hang" (
    "So_luong_tra" integer NOT NULL,
    "Ma_tra_hang" character(10) NOT NULL,
    "Ma_hang_hoa" character(10) NOT NULL
);
    DROP TABLE public."Tra_hang";
       public         heap    postgres    false                      0    17589    Ban_hang 
   TABLE DATA           Q   COPY public."Ban_hang" ("Ma_hoa_don", "Ma_hang_hoa", "So_luong_ban") FROM stdin;
    public          postgres    false    221   �+                 0    17572    Hang_hoa 
   TABLE DATA           �   COPY public."Hang_hoa" ("Ma_hang_hoa", "Ten_hang_hoa", "Kich_thuoc", "So_luong", "Loai_hang_hoa", "Don_gia_nhap", "Don_gia_ban") FROM stdin;
    public          postgres    false    220   �.                 0    17327    Hoa_don_ban_hang 
   TABLE DATA           �   COPY public."Hoa_don_ban_hang" ("Ma_hoa_don", "Ngay_ban", "Phuong_thuc_thanh_toan", "Ma_nhan_vien", "Ma_khach_hang") FROM stdin;
    public          postgres    false    217   93                 0    17283 
   Khach_hang 
   TABLE DATA           n   COPY public."Khach_hang" ("Ma_khach_hang", "Ten_khach_hang", "Gmail", "So_dien_thoai", "Dia_chi") FROM stdin;
    public          postgres    false    215   �6                 0    17322    Nhan_vien_ban_hang 
   TABLE DATA           �   COPY public."Nhan_vien_ban_hang" ("Ma_nhan_vien", "Ho", "Ten", "Ngay_sinh", "So_dien_thoai", "Dia_chi", "Ca_lam_viec") FROM stdin;
    public          postgres    false    216   vA                 0    17332    Phieu_tra_hang 
   TABLE DATA           p   COPY public."Phieu_tra_hang" ("Ma_tra_hang", "Ngay_tra", "Li_do_tra", "Ma_nhan_vien", "Ma_hoa_don") FROM stdin;
    public          postgres    false    218   3C                 0    17560    Tra_hang 
   TABLE DATA           R   COPY public."Tra_hang" ("So_luong_tra", "Ma_tra_hang", "Ma_hang_hoa") FROM stdin;
    public          postgres    false    219   �H       t           2606    25788    Ban_hang Ban_hang_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."Ban_hang"
    ADD CONSTRAINT "Ban_hang_pkey" PRIMARY KEY ("Ma_hang_hoa", "Ma_hoa_don");
 D   ALTER TABLE ONLY public."Ban_hang" DROP CONSTRAINT "Ban_hang_pkey";
       public            postgres    false    221    221            r           2606    25701    Hang_hoa Hang_hoa_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Hang_hoa"
    ADD CONSTRAINT "Hang_hoa_pkey" PRIMARY KEY ("Ma_hang_hoa");
 D   ALTER TABLE ONLY public."Hang_hoa" DROP CONSTRAINT "Hang_hoa_pkey";
       public            postgres    false    220            l           2606    17331 &   Hoa_don_ban_hang Hoa_don_ban_hang_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Hoa_don_ban_hang"
    ADD CONSTRAINT "Hoa_don_ban_hang_pkey" PRIMARY KEY ("Ma_hoa_don");
 T   ALTER TABLE ONLY public."Hoa_don_ban_hang" DROP CONSTRAINT "Hoa_don_ban_hang_pkey";
       public            postgres    false    217            h           2606    17301    Khach_hang Khach_hang_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."Khach_hang"
    ADD CONSTRAINT "Khach_hang_pkey" PRIMARY KEY ("Ma_khach_hang");
 H   ALTER TABLE ONLY public."Khach_hang" DROP CONSTRAINT "Khach_hang_pkey";
       public            postgres    false    215            j           2606    17326 *   Nhan_vien_ban_hang Nhan_vien_ban_hang_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Nhan_vien_ban_hang"
    ADD CONSTRAINT "Nhan_vien_ban_hang_pkey" PRIMARY KEY ("Ma_nhan_vien");
 X   ALTER TABLE ONLY public."Nhan_vien_ban_hang" DROP CONSTRAINT "Nhan_vien_ban_hang_pkey";
       public            postgres    false    216            n           2606    17336 "   Phieu_tra_hang Phieu_tra_hang_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."Phieu_tra_hang"
    ADD CONSTRAINT "Phieu_tra_hang_pkey" PRIMARY KEY ("Ma_tra_hang");
 P   ALTER TABLE ONLY public."Phieu_tra_hang" DROP CONSTRAINT "Phieu_tra_hang_pkey";
       public            postgres    false    218            p           2606    25810    Tra_hang Tra_hang_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Tra_hang"
    ADD CONSTRAINT "Tra_hang_pkey" PRIMARY KEY ("Ma_hang_hoa", "Ma_tra_hang");
 D   ALTER TABLE ONLY public."Tra_hang" DROP CONSTRAINT "Tra_hang_pkey";
       public            postgres    false    219    219            {           2606    25789    Ban_hang fk_hanghoa    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ban_hang"
    ADD CONSTRAINT fk_hanghoa FOREIGN KEY ("Ma_hang_hoa") REFERENCES public."Hang_hoa"("Ma_hang_hoa") NOT VALID;
 ?   ALTER TABLE ONLY public."Ban_hang" DROP CONSTRAINT fk_hanghoa;
       public          postgres    false    4722    220    221            y           2606    25811    Tra_hang fk_hanghoa    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tra_hang"
    ADD CONSTRAINT fk_hanghoa FOREIGN KEY ("Ma_hang_hoa") REFERENCES public."Hang_hoa"("Ma_hang_hoa") NOT VALID;
 ?   ALTER TABLE ONLY public."Tra_hang" DROP CONSTRAINT fk_hanghoa;
       public          postgres    false    220    4722    219            w           2606    25767    Phieu_tra_hang fk_hoadon    FK CONSTRAINT     �   ALTER TABLE ONLY public."Phieu_tra_hang"
    ADD CONSTRAINT fk_hoadon FOREIGN KEY ("Ma_hoa_don") REFERENCES public."Hoa_don_ban_hang"("Ma_hoa_don") NOT VALID;
 D   ALTER TABLE ONLY public."Phieu_tra_hang" DROP CONSTRAINT fk_hoadon;
       public          postgres    false    218    217    4716            |           2606    25778    Ban_hang fk_hoadonbanhang    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ban_hang"
    ADD CONSTRAINT fk_hoadonbanhang FOREIGN KEY ("Ma_hoa_don") REFERENCES public."Hoa_don_ban_hang"("Ma_hoa_don") NOT VALID;
 E   ALTER TABLE ONLY public."Ban_hang" DROP CONSTRAINT fk_hoadonbanhang;
       public          postgres    false    221    217    4716            x           2606    25758    Phieu_tra_hang fk_nhanvien    FK CONSTRAINT     �   ALTER TABLE ONLY public."Phieu_tra_hang"
    ADD CONSTRAINT fk_nhanvien FOREIGN KEY ("Ma_nhan_vien") REFERENCES public."Nhan_vien_ban_hang"("Ma_nhan_vien") NOT VALID;
 F   ALTER TABLE ONLY public."Phieu_tra_hang" DROP CONSTRAINT fk_nhanvien;
       public          postgres    false    218    4714    216            z           2606    25800    Tra_hang fk_phieutrahang    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tra_hang"
    ADD CONSTRAINT fk_phieutrahang FOREIGN KEY ("Ma_tra_hang") REFERENCES public."Phieu_tra_hang"("Ma_tra_hang") NOT VALID;
 D   ALTER TABLE ONLY public."Tra_hang" DROP CONSTRAINT fk_phieutrahang;
       public          postgres    false    218    219    4718            u           2606    25741    Hoa_don_ban_hang pk_khachhang    FK CONSTRAINT     �   ALTER TABLE ONLY public."Hoa_don_ban_hang"
    ADD CONSTRAINT pk_khachhang FOREIGN KEY ("Ma_khach_hang") REFERENCES public."Khach_hang"("Ma_khach_hang") NOT VALID;
 I   ALTER TABLE ONLY public."Hoa_don_ban_hang" DROP CONSTRAINT pk_khachhang;
       public          postgres    false    215    217    4712            v           2606    25732    Hoa_don_ban_hang pk_nhanvien    FK CONSTRAINT     �   ALTER TABLE ONLY public."Hoa_don_ban_hang"
    ADD CONSTRAINT pk_nhanvien FOREIGN KEY ("Ma_nhan_vien") REFERENCES public."Nhan_vien_ban_hang"("Ma_nhan_vien") NOT VALID;
 H   ALTER TABLE ONLY public."Hoa_don_ban_hang" DROP CONSTRAINT pk_nhanvien;
       public          postgres    false    217    4714    216               .  x�u�Kr�0E�qzYA�"��<�^����TZ-�훑��qt��ێ��������|�����{^��x��;�|�=������߿�{�~�=�Z��v>�W>W����^?����$�5,yi��Ϧ�J~hc��/H�I>��\���Z�K���<�~�S�Ѽ�~ɭI=}-D;�~ͻ�#�п��M�Gr�����K��iPO�z�Ӡ�F�H�~���uJ^2߶�x��s��Z���{~kX��Ž>��s��ւ^;_{��h�Z�Z����Z�k��r-b��"���|H���>0�M�������;�À;�À;�À;�À;�À;�À;x��x��x����6�<���y��%��bm�U�ٗ�0���D����'������w��b9m�|������]'2��:�gcr�}A�'��\�r
o�)4��is�~�������|�3�B\'Ҷ�v�&��	'i�I�p�&��	bMk�X�Ě ��&�5A�	bMk�XĚ ���2�@,��2�@,��2�@,��2�H,��2�@,��2�@,��r�A,��r�A,��r�A,��r�A,'��r�A,��r�A,��r+@� ��
+@� ��
+@� ��
+@� ���
+@� ��
+@� ��
+@���J+A���J+A���J+A���J+A���J+A���J+A��
�*�@��
�*�@��
�*�@��
�*�H��
�*�@��
�*�@���g����X�\ĺ�"�-�4_b}�y<� �X�t         ,  x��Y�n�0=;_�/lKv�뚡�;좦Ym,���.ڿ)٩
(�8��=�O�=R�u�f��K>�F=V{N�2�_R��WW���-�8OCu^��� �<���=���\��%:MV��Qm�9-K{�Y�C�<�{j�I����$�A�D���<�lx���:ئR�[r�.©���Ǽ��Q� �/�:nݹ��-�d�(\�����8�Z9[���r����[&FĊ| r�#V�y�Q.*�S��A+ѾAB��&GM^� #+Z�{oA1(ʑ��'"E�E�w��{j|v�	코dƄ/+���Xd)�
���� V��ɶ������6�X�9��ez�Ʃ�z�0�\K���/]�\��!��Hb�w�S�p��Ճ�_�2��[�#��KL䓀5l�
��rx]v����d$_!�[���e:�o��!!G��F&�#�ez�gP3�#�E(1:�my���1M/ܩ�jg��}�P��r����|X���/+�j#&�1MWt��Ɉ��iq�t8�bণ��O�Hb��}���&S=����'������,0:����(%��xt�˙f�a�	��*j�Ht��������qV}<t�ֹ��>�Ɇ����3=���`y��8t��o��)�M���כ4�.��Tb�"DډL:g:�08�pJtp�I�т�y8r�D������ؼ���3�xdp�h`��ib�f�2����RP6��؝f�
1r�����+d���R�*G���e��1"k�iu���Cv�8<�3� ��vM3���֐���i�d6-X`b��S�Sq!�Ħ�k"�L��E�kX�Q��eW�/����Fm\����s���0Ks�2��t���`}G/ɳ	R�� �g���وg��o�~����1@�iT�#
#x�;أz���it9d����t;4���
$j��S��.#Z���Ѧ��6�I��jR2��U�I���(�1֙y��K�z|�1���ώ3*�dX��<��@�$ڗ��(W��;�:�� n�0��X��F��X��!��m���Q0�}R��O��q`ů���?�J�0         �  x����NUA���Oq_@s�z~׺ 1qE\�!��1���@��S�i��`��0�o�����f��6��͞�O�?n�/�n.����_�t�����) ��������������]  �����㟧������]�3�P$��0�0�J@=>Be@e@��v|���ƀ.��K��C������#,%η ����%���K�H4;>K4J4�h8>K4J4�h~|�h�h"���X�Q��D��GXJ�D��2��(�D���u6J4�h#s��M$��\g�D�Dl��J�H�e�3("�\gP"D"<s�A��(��J�HD�\gP"D"Z�:�!�3������ΠD�D��u%�H�-s��}'���萀�tvJt���tvJ�"����UR��)ћ���S�w	HMg�D���N�>% 5��˶�M�B�E$�s��"sӹPb���\(����t.�XDbn:J,"17�%���΅�H�M�B�E$�s��*sӹRb�H����HD�M��XE"Rob��*�z+%V��ԛX)��D���J�U$"�&VJ�"�7�Rb�I|���7�Rb�$ ��Xb��fli,�Qb�[Kl��\�-�%6JlE�-�%6JlU�-m)�[��`K[J���% �Җ)��}�[�R"%6�h����H�]$Z�"��N�]$Z�"��N�]$Z�"��N�]$Z�"��N�]$Z�"��N�]$Z�"-%Rb��HK���E�[�R"%v��`K[J��.liK��8D"�-�%J"���%��`Kc���HD����A�C$"��X��!liK��8D"�-m)��HD��-%R��liK��8D����A�s'������'%N���2K��8!e�8)q��Y��Y$ ��'%�*�DJ�M�K��8���)q	(/%R�� (/%�I�M$Z�h�����������/q��         n
  x����v�������heQ��Ȼ`��U9f�4+7�1�Z��N���3g~ ��>�Z��/@lg�۳���tz��_�������7��Ƞ_�_�Ŝ�_><���o��i��zz����������}{�ζ&{h�c7��#�����g�;�K�<�%χc��e��v5���t۝>d�^ӏ���_.ɝ����
K�|���6�X�+j����WJ�i�w�ٶzs�j�;w�x0O<�X�'��F�����䆦��зiH.�5����~uxY��}ж�_��oQ�{	��KrE��$�ix�B#�Y�w���uV�l/�]���us�;P-������FW���L�m���^������a�������+jg�9��}�4���������h��rDWڱݢb�/-��A��D�|��;��9dv��'���vTvGܿ�r��H�{T�%��v1Yҝy#{<t��k��L�m���VK�����91��;[L@{X�+Ts;�U|��坁�G�3L=&,��Wjo�cgN㋍�
�xg���T�v�uT� �ߴ:�����t�,W��C���oE��<��3�$;���w�D�P��������@�{�Q�c�z7�'I5Oc���Ѭ�#�wT,{�V���$;Kl�=O��k��F�=�u��\�ht?��1A�i
о�ƭq�i���+��
նn#{��坁F����]zL���.���`.�_�+TK��@���V,�[�	����6����r�j�����F{��j2�<&H����.,^^� �rs����*���g-����N#pc�B�`���{ީFw0a�����բ=�������7t����\���?A������<`��]z��B�`���=���jt����\�&��_�Xo�_�T��c�ޞ�B5o���:{��Ξ/&���?���-�'���������Ïޞ�B�h�0�	���9��Z���O��\�xX�A���r,�RL�9�Q{>�%n����h��X��Ï���i��~�r�j��p�#�ܨR�i�	�=�	�Ğp�#��(B�Z��W��W�ˍTs��@co��X���x��~mɱ\�����q�=7��R-�D����,W����X����h�c��bb�wG���{^�A���r,�RL�.`�gB5����x{n��Q-ń��8�fB�`�4�����1���+�P�ݙP-��Mq�=7�g�bB�w�B�`�4�����1���?�XL���\��y�9ޞ<ȱTK1���s����qĞE��TK1���s������=7��R-ń����YMF�p�`���ɝ�����y�+s�h���R-ń�����j<� '�s<ȱTK1���s�Zjϱ '��h�c��bB�w�B�h����sU�s�bB�w�B5o����sE��TK1����H5��h��9�X��Ïń��.^i�`QN�w�(�R-�D������a[�@s��w��R-���3����s/��))��Z���)&�v��\�b�A��a[�D�8���x�R-ń�w��,��-R�1N�5�X���ص4m��mc��g1l��h���/�X�0��<o/;�D�-R�)���Z��,SLl�f�;��OkF�/���EJE��~�V�8�)&�_ܮgå����"%��q~��uqV)&��,d#[��"�"�a�[+S_uJC�v�d�gm����[�u�H5�	��kioh�:��EJ8��[�R���Dbqh�~���-RbIN��5��D�9Ll�P�|��.�m�Nq��֪G��0���h��wQ�r�m��p2�wk8��R�9L���-RjR�wkU�#Ts�����h��؍�����"%^ƙ�vt5e�H5��$�O����H�%9ў�h��6���ح ����"%�27�D�9L�+[��$ro�m�R��8{�Lq�j�6���9L��a[�D�8���e�H�&h�ڶ͈�e�gm��q�=�c�H5��;;6|^{ߵc+���"%Z�	�/�D�9Ll�v~ �8,w�)���sU�#TK�N��~[�T�8Ξ+S��<�6�=��أ	'w�)�.��s]G��0��4�0���Xn�-R�e��2N��`��m�Vإ�f*��-R�1N��p���;M��hF��E*4�����s�H�<>®!������y[��r�h�4ǉT�Ŧ���j���.���F����G،�w������Ğ7����a#���E*8�{ިR���DX0t��v�U�-R)Rn�4�G��0�/s���"�D{ޠAN����t��h;�öH��8ޞ7x��&��clFf'�=_��"��*����*��M|��)ΖS���j��4)���*��9L��N���H�q�=o�:N��Ä��>��'���z��4]���G�6gL��@/ޮ�m��^������q"��ل���i퍱o���H�P%��Q�P�PMB��lg�9��A[��c��"ƉTK�N�� �Ӻ��]�獲�#T�[��/{��^�Y[�c�`�8�	T[��ly���E*4�	��q"�z�	��u��H��8�=Gs�H��7��^�S��z���.���.�P-`B���χ������"�B������_{61��I�L�m�
Nq�=W�8B��;M��8o�"�����\]]��aZm         �  x��տn�0��y�{�P��_�ZҖF"�.V�%U��}?�B� ��NH7��|��NJE��~86�x����g	e�\H��H����X(Ѷ�m߅TX*�n~���]sSY/�[�v����Q��<ND��4~1���}�*-�K��q�s{>��W�v�#�,OR�冦{�0���b�zm�h���T��𴻹����(�Y�fB!���%Z�1�p쪶�8�)3	7E�ίws���`gy���n�T��Ӿt�wH+l^����83)77����퀧(�Y�!�Sf���;�f&�憼��l��g(�Yn���qvU;�M���hϹA�o�{�m<G��r�\&�?�~��ϐ�֎�9?�)3���o����mܠ`g��"Ep���%��Q�%'��K:��e���nJ�`g��D���e�?�N���]?El8&         O  x���O�#E��ɧ�/������aA�œ�5&�$n"�٣D<x�!,��8� �F<�2ߣ��'k?o��R��v&;�3��ԯ��e�|��(8Q����|T�+v5�w?/�e]��`I�?9\�M�����}��!��\̫?W�����.���w�nN�&G@��9r������ټz�|�	_,�e�G�����q����N�M��$E�]Ѽ.��O�m�	Q�i���	�k˖��lBZ>��M�� C�L��sQ�?�z~wn���%A$Y�d�M�^n����3�W�B��A�{Gn�����&��.g_��w�v��A������V5/�Z�����v���	�D�F���?��o�7�/^�Jq�C�I�.�p�w=�E����*�m�.�^%����Q*v���_=��kvQ�o����5�$��a]���u��k}�\w���>}���~����Ţ���°�8���YW����^n����|�faSq�����F��f���߾��]��F�� \pC�\t/�_6aG��]���Ђ[�OsiV�7� �Ђ;ċ��@�)(xi��2 &�����;�� RJ
.�� N�	�D*g�F������O;�� BJn:0�:��
!��ҁw�!o4�6 �w�PP���x��|e <�Q}d`���hO�}�����<��M'$BRB�8!R��4B $D{,�7^J���xz�6���I�����A$$�D|:O�+4(!)%���W�@BRHߗ�P@����Š��� };�N-��AQ6�訒;{)`�B6�O���6(d��?98{)`��4(
�sf/lP��ŉ�9{)`��4(J���K��Qf��K��Av��K�Aퟗ����Ay�����A$�w�Dg�^���ؠG�РG�����������G��������������`F��`���`�� a��8a��haF�pa��ha��hareZ�Ha�e�Ie L�A��٦(as�d��m�`�6IPf(a��7��@�}���G����� @�#G�s��: l\P�5�A�6n(�:u� {�'{�|P �;����M!P�%	�̍۔�#\���=3��8�L�� .KOf�xp9z��� ..(�� �₲�Xq@	w$)+ �Z��'V �S	Q�AŊ>���⩦��<����C�x�-M��~����Ҕ�,:�1�%|KT&���7�<·4e\佩��e)�$�T��[�2J�s���OU��r����o �����}�߈��������鿝�*�         4  x�u�An�0E�q�*��HJ�A�t����-ܒ�A^G�Ň-Vҁ�o�??��~��������_�kO_�|�=}d7�����������}=���7�c�ޛ���N�~����[}b��ݰ������W_x�ξ�Γ���<S���y[xN��}=�c[Ǽw����:�m}c=��������sr�'�>����9����Vw�3�}�S}ό�s�������.�3σ�}=#��0o똷u�sr�����s��u�ߑ�h�����z�ë��U��j�>ҫ�9oux5r�U�7��^U�W��yn^��F��Z���y�U븿3��j^U�W������j��u�o�7�	�j��V�W3�	��N�f���m��u��Yn������sB�Z�W3�	�j^Yy�Z�W&��r��Lxe��2ᕕK��&��<�ʄW&��r^��ʄWV��+^Y��y�WV�����ʄWV��+^y�����+^��ʅW.�r��\x��+^��ʅW.�r��\x��+^��ʅW.�r��\x«^��*�W!�
�U�Bx«^���
�U�B|_��*�W!��Bx��*�W!��Bx«�W!�
�}��WKx�:�Z«%�j^-�U��j	���ux��WKx�:�Z«ֱ�Kx��W�ë%�j^-�U��j	��ӫ-��«�1�^m�U��j�����^m�Uuz��W[x�:��^m�U�Wx�:�^�~��ë-�j^m�U������uxu�WGx�:�:«ֱ�Gxu�W�s^��^��^��^��^��^��^�ｺ�������y�x�^�j��     