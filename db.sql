PGDMP         ,                {            db-sistem-inventory-barang    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32806    db-sistem-inventory-barang    DATABASE     �   CREATE DATABASE "db-sistem-inventory-barang" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
 ,   DROP DATABASE "db-sistem-inventory-barang";
                postgres    false            �            1259    32864    data_barang    TABLE     o  CREATE TABLE public.data_barang (
    id_data integer NOT NULL,
    tanggal_surat_jalan date,
    tanggal_terima date,
    tanggal_buat_item_arrival date,
    tanggal_posting_item_arrival date,
    tanggal_pallet_transport date,
    kode_barang character varying(10),
    nama_barang character varying(150),
    no_pr character varying(15),
    no_po character varying(15),
    kode_style character(5),
    nama_style character varying(100),
    batch_number character varying(30),
    batch_vendor character varying(30),
    quantity integer,
    expire_date date,
    sisa_kedatangan integer,
    satuan_gudang character varying(10),
    satuan_beli character varying(10),
    jenis character(20),
    kualitas_bahan character(20),
    kualitas_kandungan_zat_kimia character(25),
    kebersihan_produk character(20),
    bentuk_fisik character(20),
    status character(25)
);
    DROP TABLE public.data_barang;
       public         heap    postgres    false            �            1259    32863    data_barang_id_data_seq    SEQUENCE     �   CREATE SEQUENCE public.data_barang_id_data_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.data_barang_id_data_seq;
       public          postgres    false    215            �           0    0    data_barang_id_data_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.data_barang_id_data_seq OWNED BY public.data_barang.id_data;
          public          postgres    false    214            e           2604    32867    data_barang id_data    DEFAULT     z   ALTER TABLE ONLY public.data_barang ALTER COLUMN id_data SET DEFAULT nextval('public.data_barang_id_data_seq'::regclass);
 B   ALTER TABLE public.data_barang ALTER COLUMN id_data DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    32864    data_barang 
   TABLE DATA           �  COPY public.data_barang (id_data, tanggal_surat_jalan, tanggal_terima, tanggal_buat_item_arrival, tanggal_posting_item_arrival, tanggal_pallet_transport, kode_barang, nama_barang, no_pr, no_po, kode_style, nama_style, batch_number, batch_vendor, quantity, expire_date, sisa_kedatangan, satuan_gudang, satuan_beli, jenis, kualitas_bahan, kualitas_kandungan_zat_kimia, kebersihan_produk, bentuk_fisik, status) FROM stdin;
    public          postgres    false    215   �       �           0    0    data_barang_id_data_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.data_barang_id_data_seq', 310, true);
          public          postgres    false    214            g           2606    32871    data_barang data_barang_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.data_barang
    ADD CONSTRAINT data_barang_pkey PRIMARY KEY (id_data);
 F   ALTER TABLE ONLY public.data_barang DROP CONSTRAINT data_barang_pkey;
       public            postgres    false    215            �      x���r�H����"#nL�+Ʋs���/��DX�R\�r���%��)I�h���p�H�
�$H $H\D�v;�\Y�-AN�<{�QL�!��%ߵ^���^��<��apvG^p���1�^�g��)�Qox �g�&(��{��~G��ӏ���e6��M��(��1�q�-��䛊��'��:��ɿ���������GO�"��5����5{��J~p�g�?����i��2{���i:�_�/�.��F֗�شp����M4
��n�⌠fg�$^cЄ��>�0���Q���a��$e'%O�5)�:�{D���$�<��y�����z�0�8?�d�;Z�U���gF����(��⯱��:����.)�#����(�C� ���a�?���`��XJNU�ҧ���1,_����<� 	$ؠ�4�� 	;�������{�Om���BV�x�{�/�A��뇃�oQ+D����(�f0B���*���
��T��L0}�K��kl�|6�����}��I��[�0�����.e��T����^�װ����1<]�����p��넣v���(�&��C+��f�������Y:ӧ�����$Hr)S���T	�q�N2y�	�?f��di��ЩC�I���������ߏÎ{���k��Vl�л�����9����g���G4y��#�N�?Y�JTA)�΀��>]���G���Ϥ��p�KAՂ3��+B%��TR����"
OG_�r�8y���yi��EX��s���b;�x��	��4�a�VV����e�"��Kq`����n:��^V)�6��2Ұ��e	�p�`?e�}ZUV�����9H����p)�*;����BY�|&���۸��K,%���z����Ufi��$���Sf�Vs�������83?9��|��#�H�1$j��Lw既P`�	��`�pt[���z7a׺9[�4����mN�&,�\��r���fN�fG���B��xQË+��V��Γ��*&GAV̩2��x��K�DA3jx�k ���x�?��5}B����q�<���d���"%�gI�m�E�p��]<��<��<�'A��I��;Yr��<��d.���ّ�����<�y�v�'�l��8��J&s$So��J�֢dLr�7�A�&����M~��//��D)��`z?�<�b4$�s�9}��ݰ4$�7z�����������;���&w����.�s(�3��|�N������g?�O�,p�3my�! �L`0�}�sa�9_3;����ѧ#zw(SL}�% %p����4b
_$O�dVOEu�m]�􋖰�(�^3?vnn���5z�/�:�#t�P�)hgD1�$��\/j�����~3�d������=(���
��* hq�u/U�0n���/ɿ�7�Bނ���g���V���W�o��ZѸ�gQ+�:Sk%׊m��3����>e�L��أG.��9v�OhW�D*�R1J� �ǝ���C�����`���r�mn�>l�M������~��=~�3T4;�H�*���p�Id��. YՉq�M��M�<D)�μkؤbDА�ZB�JOXCȜ9��k�R9�S$�$������(�c)��LȝHfi�\���ɩ��6���?����:�Z�J�d:�\Q�>y�9��+o���!��*�nM2�m�j�//���	��-4��%���=81����nn�6�����q�_�p��qҪ��)����Ch�\Q7起�k��bgr�4\dYo'��k��;	B9'��a�$f����{{��� ��Z �/���(耦C�^�������y�|@��V�o���i<�F�V椩�5H�`�.A]�{��ڠ6I��S�n۾��F���E`z"��D��>��;����� W�h���o����+�&�s5�z;G_�D���S4��~��Ͽ�+�Ƒ&[p�t9�S�U�P�oߝ���يQJ*���e1�J�|P}�I�z��	E�*Cy C��/����8D�hĨ�����\cF�O�� [%�y�#@S����^Ё�"
6S�xR���AE�A���"�e��m���V���K /���EŁ�u��:����%5�|�Kv�k���d$sg��;k��Y`�|p�8]D�S7Ld+�ݜ�\��w���)���n+DG��k8`w"
�%;�ɱ3Ohk!/,ah�8��e���"B)��6R�C@�e�B�I��~�SQ�Q�w\�m㻖b7E�E&�����tgn4�W�hE��e�<��V���h���9mH0����Eq6���>���b'G'KVe�@'�l64U
Qx25��S�u�p_U�|���[ֵQ����7
�k0_6C]̓~�>=����hx;���}v��4q?$�� ��_]V�	@��
9�!���y��u�����25?
��V��<��ㆬȨr�9Uu+u�r��R�� �ߙ�O�`W���Oۯ������������m�j�Zas-���vS�Y&�υ#�u� �N���EY�fR��ژ��aKb�Wc��J�KbYV��w���T�9�*H*�xZ���8�9j�ޜ�i�Q�:r6#���aG�ا�l�����E�ˀp8[�8�-@��7@\kt�FI��F4B��z����Ԏ�ڨ9��(h{���T��>���<u�����i�m��Vre-$�5����2���	�!.$�O��ta&|���㝚ʫS�T�
/�)�Ln�<���St��b���Sl��6��vq9KqL����<���F��m�LhNC�C�-���}�d��6�)�{4e�2�DH�]�q0r�O��%�(U�[KgM��È���#C��xn���T��u%�Y�A沆78�yU�>��O�������.�	�yU,�&�[)�B���2H݀��>N����P���`�h�R�xcj]I�XU�B�4EJ��]�����b�x�H�k/y1B��ivp������3
��W��~}�|�M�B:>Q�z�e��Pm5�)��*����d���fj�����x��)��/��o86F��9:��
�6�T&m#p�Ht+��Ql.B9C���	Ȗ11D��-C�� v�9��ɼ��q_j{����d���e�<����U7�-�O���h�z�E����c򕊼���̫nBK$��7��y*~�m'�b�b��Q����2�F4���j�*�~�t�� 
ߒ�|;I"��M�l�4���+��4	�����A��.�P�q8
�h0��7V(�v��_��M����E{��kmgg̠ۈ͌�Ŭ-;��0q�.�c�,�p�F!�!����%�p,P8���t(���Z_ t��0��wa�H�4LR7���~6�C�������òR��-�ׂ��C2���hL�����ml����Y���%s���Jj5��M������X������'�,�J�nȎ�Ì����݋��׽��&��(��a`�.���M���A4��\N�dd^�@g8�y��~�Rkp� ��y�o֫L��b���㶳|ȷF2��[Ű�iK����LMM�����
�8j��QԴS�!$�}��z@��ǒ���ӹz2Q���"xNb���276���A8�A<�ݪDg������[�
���N�e�]�lr���̑iP&	�O����V�3�9�87�s)>��Z�a�i���!%J[�>�1�f7Ng%�u<�?9	��
4A��7��>��֦>0Ï�-��(y 4���P��y3��Op=}z���y�v���L(j+bNg.��N	��q�2��¦��f
�[3|mze��p/��o�����fF��Q4\�8˷G��F�Ȥ��F)�d*�r�)�U���
���'�s��;�I�
���=+n��&	~>�3�3�egj.��c�/��������=~�x�:��/���>��&����AL�M_&_����yz��M1w@��Ȁ�4����S���m�K��F�m�ё�ep�N,�    K�r1_�Hh�/��
!����F�C�An��9ˈ_X���z�!�r[P;�+��/�0�#��Rd|���ѥ,�<� L�.N�ms��\fٲpބ����+�ue4*��X�gM*����EM~�#��doPUU���*,�Ѵ/�:��� N��(m�$������ ��z����e:nf��x:�V�*�u1`-t�h��!��%L�jD��J�ԙ��z ����I+���K���)�=i�����iK/������|�n3��9��C�`}��=���|@J3_]�`�p�g�t�v�#���_���I��U�D(��fo�P�7�������c�b˘��f2n����3���s����1pɅ7�>��^a����o�H�&l�{�hO�����<�&����&<��쏩�;M��_�/H���h&c\V��u�ll��<xc'�O��,���٦�?W�����o��%����e�1za�J4%o*��N�g��>ٟ���9����>�����)j;�y
a�W����f ٌusX�GQ��Z2=u�aU�{��%De2�i�����a�	GQ�����`�t����w����7
�ð;��u�A�ڐ����I3��������g���ֺඬ�s1�/��>K�jxӃg�߻��Pn�'Ѭ����h��|�>.� �1j�nL��0�;�7���.S5����2�a���i�A����1�<آ~����9��4��?=�O`�؅��8$:ǝ����v�/��.�:�3$.|�/����K�&��C��n���Z�T�Yo�Soi�̐�o$�<���hJ�֭��!(��N�1�n��5���E	���]��a��Qn���%roo7F�lTGs^������ZS�0�՗!i�1�Gǣ�d{{s��H�Ĥ'ezQ��0� b�=�,Y��(j�;���b+�{à����l4��÷k0��LqPZ�c��\(�
�Z~۝��M n�`�0�MS�w��%�}�JoA'�M��6ؠ�G�^�t��U�����8�����wZv���G5���	n�)����6CIrֿ2;}E)xg(%n����XYx4�⁗4%�5��*��J����eᑼ��N��	��3�	�;-��I7�\�i#<e�q����|�x5忏�;m(�8]C�͓�����fo�Tl�ϸ	���W�T�`)�Ap��&���}�B ׼F#��	%����pd�4���s��f�ߒ"Iu��|\O�%�]~��`���,&}�wa4�ݎ,J����"��h>��K�v��MP�4�v��4�!�Q�Y�Wfw'�N�u���	ԅ�w��g��#����z�j�Y���_Q�*Du��il�`{�^�?0�f?���Bdt�)��MY٠���j�-!U���.?I_-�DSv��ࣲ;��A����v�e�q��J�^ӑ6�>�>�Qgzg�q*�~Y� js��>��;�6QtF�U����P�S88%7#�R�|]'�8!bn�M�wRY�d��C��½�]���K*����5��� Zm�gKDM4q-ab�%�-Q�;�o͖����������o����9w��8KY�4�in�^�����ߴ�EHl�����AOӟ��0�P�I�>7��tc�n}R�~%�l`�:	����		2\� _'��A��]�~�?q���#�6n#A$w!����>&_mo�ENv�әQ�8�AsЃS����K�&���l`�J,�*K{U��Ѭ��++� �FS*e�ԗ[i�1d���Vl��鲝Zu�o��3����ð����:�C� �m ��Y���e}Ċ2y����34=�����d˩@�_�_�Y�� ���� WfQ�y*���٢�yJ�4�S�]��jl�?H�Y��{fvN�G����G��~o~@�7Wq�E�M63�].b	�����;���,
s�}�����0���UR�ۏ����f�T'Οg���|�%���{�~4����|^#,�ڗDfA�z3.q�f���?��`��t�u���xq�����៎��R6�5��g�ݒ2�C'�Íe�;^�bl|��č�.c�-��}��H�p+K�wi���� a{�}��M�Z�C����H�b���b�M1�(�,�g)?˛.oi����ߛ;c�`L}�I�X�nj+���z��2�ʕ��F��!K+ "�a턭(@��
�����"��{�*����N��t��g3��n�`����W_�k|��/��9R�����R������ �1�]��Tć�yoOWft���4�sh~��W	/�IV�¸���f�3�$�&^�m�Q5��˯s��+����B��{*Y%���\����&�i��*�	י�g�������*b�N�FI�[.8lY�Ms��Lci&���v�$[8��̬�=Ȋ}���⽫�o�>gݚ��h�
�ʡ-�K��4��bY�-g��I>54��xC��:Ԭ��r���;�9��u�H�o�TWG�������>R��#/�p
�J��D};'�)%i-Mr�	*]�#����4)��,�.R�&�B���x��p��ՉRG�bm�Ԍ�#3����g��(m�F����H9w�e�l�!���������T}�L#0Mi%�
���M:�l,��1�)����J��@Uՠ��,l�J지�<%�e����o$����J�-�"��

L�2�a�64��S�k*��������" ���Av;�\�~rW�����,T���i�5���*�sO�2~��ʊV�de� �a�Y�)�`��s �,ǎ�UqV V�t+����io�J�|��l�I{�U-�.B����'�~����1_� �Zy�q�y���~Bs��f�e��u(2�7/�"���,��������.ܱol�����ⓋQ
s˺WA�b����9RԤ�I��qM#��R�PF��r��� �$��K��&nVO��mԛ6p��p�W8��ҙ���F$�#������Gi��(;WG%	�t�I����u��������QA�+f$SH}���@�}���ۃ��	ּ����!P��m&a���|׏��N��]:BJm�s˽/�m$W����(�q�>D�"�{_�� T�� �u�pnz��=��Q�l�no�;�ah��ӧ�y����*�S]bu'u���bn�K���S������⠑tzofܘ����?&檧5�`V�5��ȡ\\�UC�G�J�M��dL��6�8�u��lk�t#cr���'�Gu@ީ$@��b.9�P�u�gn� q7i�,39��&� 1�r�X�w+�F��x�]��J�ܧm'�
s�q�2;��9�>�����"�3wT�LrGe��*\	�|1>�3%H}s����k�#��s�TXr���f�/�'��z�_�I���!����wԜ�߿�ϟ��i���g+h�˕�r[[}��_)�4\��+7aw��¸t��k�̥i���YYcx�4 I����Ѧ���5��U�{S��Xy��h�G�!�	��bk*�M)�{"��һ��MrK@�W+<�ZN�)~��5�؛9@3g?��*����T�q��S�^G!9������c��f�3�T�6p������NDSFY��ʱ%����_��/���4> �$�0_�N��3A���w�'Vb+?%ӣ���.�f��۲Bs��L�2=���0�B�鯂�C��U���r_�ц��\��v����K��^S����zK+?U},��*UF��U����)�r,�DU�T��pe��J~B��e�j�w#S��u$����X�dN�Pf�|
U��Q���P�N���۸�+
�ndjU��~]�s���T-��(�`�e& S� ���4�ۤ�𪄰F@�[|���ź�� ��e~��榗x3�N�ܣ�}@����jO�_&�3Y�G2~ܹ(,y"�뙸�+���M���w�ap�r!�	�3|��)�5��B6'H	���+%�4#!��z|������8;�r�����>����+��G��N��~��u�T#�U����%l��Y�(F�x�k��MR������On��7D� q`�b,��_0Ѯ�9��&    ֚���$w,"�+���s�~.U�r$�D:�`!f�K����#Y�(��4�-`���� ���IĬ����BP�:�f;j^�]t�N��h0�w���#u&��!Y�����`��R�jv�9�A%.�w���w��^����]Ž�p���ϭp�.�{o29��+�p�?�^�������3�߼���0�?�/v�$��%�V���q�޶s4�������f���
Zg��1ʡe6h��' � ����z�"�cO��uު߹\��J�����h��B�i~�����o��R�۞b��F�:H��o� UOf"T5��(�rj�`��H�̽��NԊ�Ah�:B��|n����Uۿ���..�͠+���9�	Ot�p�>~��1���Ѳ�N)vF���Y!u^	�<���i�bЯɽ�1�:�T��hd�b�$z�GK�+�(I�;Ά�;�BY��_Ξa�Tݣw�WB���[07^�O����b���<痨:^ D�֥�K7�4�&(�������h���m��J����b'|�{8��+)��?����jF1zw;yY���儯�*�=`���ZϚ#�ƃl}�3cj㸩Ӽ)��>S�xb81���b��%iVn�S����������T������z��z|�����G�þ�u�_�C�	]:���Y	���UN�%��d�n{�kH�z-���{;��;�����h1��S����J�����d����<{�ț쌕��3�g��Μw�a���_�r��~���h8�ޡ���i����4��x�D_^�`�c1���G<E����{Ny��O����}�u��-��J{���ו�l��
�����%���AӠ�^��W^z�z'��(	��Mx�y��m��BEFC��v�.�Bԋ{J�>Cu�6ݠ�ͩm�<h¨-�33���%�N��U2ԉ�̠1�?iUD�T⒚t$
�a�:���j��ݰ9���Q�7Q#4P��D��WD���ͺ9���̟3Ջ�w���O��ۗg�� ����L�D}��3Ea2s[�,v�SUG
��pɏ�+g=��3�.M���R��s$��D�fg�4�K^;F�`pm�o:�Vo�Qh��FӇ/����j�e�{��WG�/e�^19�O�m��Mj��8h�1
Z�ޠ�Ш�j73m}��ޠ���}��5��J�β�e��dI�վGg�(γ�Zu�J�MXV=���i`�ru�S���o���s�~'��<�e��-nYqҼ�t��2pϐdt��jI�S¥J�LIa��ܥ�N;���x�{��&r^k<D7��0�.�Rs@�����d�f �r*@�Yp���� &��v�7�CLw��o
��)���Jg����#���/)�I�5��eT���Y&U�	�~��(��:��:��9��r���tV&�.P�R-������FU3��{�O�;�V>��MZ�#e������5� ��uQ7�V4�F���B䃹rE���n�cM-ket��	XW)��'�?^^U����j�2�$tYw�nt�����nRC;���Yx�ח<S�ڦpC�S.�G��*^�vquʗk�D� ��b�K���q�Ku<��dk �bd��@���()V��X�Nn����mх(�C<�F��ϟ������$�8��}4��=���ϲ����I�:�p�H���(����K�o(��4(�[���\߄5+.��K'��E���F#�����	C���_�0�7����s}��>~��Y�'������ܯsq�E�V4�a��� %� Ţ��5vjZ.�
Ǆ�'5-\�%]eI�aY�3@�]��p&UJ��{4x��u�����Q�r�>S�6�l �	d���'9�U\x�,�WY�%dB�X���|ľ�N'.���H��$��e�?=E�h�:E����7��@j&�l.S;����b�T���귁-v���O���1���J�a/l�� ��ā*��%�B��D��,��+X��LE��8�چ�ԙA@5��4�`m�C���k��ϗ
�UqG���Iz�F���E M�n-C_GeZh��ñ<J0��}�Y���Xn�v�>�&jͷ������&Y�{ފ�'ћ���ћep{+�i�*�)Mw�,U�b]gֲv�k��;))���n�I:��8F�d,� v�f+��f��7���C�����//(�6yBW���l��3 }&����}�v�������-\�+G�w���{7Q�$h�Zć`�Z�0.�U��}иN���;V��)�޽\�Q�.I��d������ߞg�h��u����ǻ�痧?3O��.�缢�B[5�$��ۂ֜=ڞ=&s\-�nA�0�7�#~-��!/��rz�����)�9Grw^��9ڷ�����`�C)�lEr�_�����I9Qg�{	p+��8o��,��1�K�5q��K����ΓLn'����<�����h0lD��*�5��
��@Td4��;8��=C��p(�D�i\�������p��Q��{�$��.xr��@k�NT���U&X\ܩ�Rb{��,���j�Z��b����d��n﷠`��ܸT���Qi�x�&1_���̲����I>W�LF[�u��s���ѧ`����� z��&w��`� ŝ���_�2%���fJ4���VFR�ب,�~��H�2���n�jc"���Uj�^3�ݜ�Wnю���Y.�r�[?�����|+f�#آl�F{�ޙ��`5�̳���g.Ǵ�s��H-�%?/�-�U��Z�p�S�*��+~2�L��d��n'�U�*oC��9�K��%�d�Y��,���(��4v>[��\�����*����=�����\V�YJJ�K]v�Z�W
��1��d�l�t�p�٣x�r�y'�jfB�p]΄ 2_�z��_� տw�b�g���&����a��w��h��%gUu:�2F.V�����)5�Ч�c��z��@]��pR���s�GRNu_�q��V uN�`�Hc�Ӹ��?C��V�}��᜵�Y�h �rf�;�T��=�b��xg�k'�˿%��!oΛR��M��\��|�Ѡ�
g�n��	e��0�n�>� ��/N��d�X����yo��/%Zi�=f.�ָw�A��P��(�_�o'�a!�\�u|��I�A�/)�Qa�ޙ�@4-�Q�9,�11�تP�Qd�2̝�6����R[��R�J��W	���*�̺�S�CI-�-��)�3.�-��B����q	��m�4�V��[)���0��!�3�TnOW����ؙ�ȷ�QJ��U	?�(+�xE�3>�$WVN�Uus�w�̏�x�<c��[D��2ª���::��%���q�#�(�^j��Gj�W�N��zla��!Ƿ�l��ҥ�R�@����8�馋�%C	��e�m�lVnY�|-Wɺٛz�����������2W-�5���$�Ъn��Cֹ�o3ʬ���`�Z�ׯ�S��f���B�Ƙ36���	�� ��u�1�Z�e�6�+��@W�t��/rIݺ�i�fuf��Cl�S�	�pՃ�cN�oy��-�M�Z&�@��'JCvc��FWZYKYVX3��rQ��HGQ�B�-h���~�:�.�_�Dk��Va�D�~ˀXe����~h5�ev�H�tU�̡�o����6��Ѻ�r��Jm^3����-Sv��I�1߻����ܬ00�ֻ�����q�E�j�.U�K�4Z��s����_�p��>{|�?���]z��/kB���DcCZ-����6n����\�|uԎ�&dE�V���/�C��99�H���xܽr��4Z.Y�_jo!֩3����:�6�܍V���
����í�};U\Yj�k�_&Q,��`�ty��{q�s�:���v�3�'�p�5�I�g�ws4~�<Lл����l��:��׿O~y}2My����l�.ʾ�$�b^�#���D�2a�sȳ3��jS����>�O��Ln�`z;�:{�7��M�S�'n��s�1y���Mݷ�w��{Gp*�
�Co�Ԓwj�+Vc/�Wg&��z���g�k_�U≮.O��e���3e���χ�v@Y�$�Ԩ�
A+�&z��3 r   ��Йv8h�qe)w���;��2�N�t��kJz9c}?3~`/�N�~?}9���!ʍ�,K��M�)�L[-���z�3���Ku<Ў�(E!h+�n��M]O�����?����     