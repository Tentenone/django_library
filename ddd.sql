PGDMP     '            	        x        	   djangolib    12.4    12.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    123077 	   djangolib    DATABASE     �   CREATE DATABASE djangolib WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE djangolib;
                postgres    false            �            1259    123080 
   auth_group    TABLE     �   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    trial586 character(1)
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �           0    0    TABLE auth_group    COMMENT     /   COMMENT ON TABLE public.auth_group IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN auth_group.id    COMMENT     3   COMMENT ON COLUMN public.auth_group.id IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN auth_group.name    COMMENT     5   COMMENT ON COLUMN public.auth_group.name IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN auth_group.trial586    COMMENT     9   COMMENT ON COLUMN public.auth_group.trial586 IS 'TRIAL';
          public          postgres    false    203            �            1259    123078    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    202            �            1259    123088    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial586 character(1)
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �           0    0    TABLE auth_group_permissions    COMMENT     ;   COMMENT ON TABLE public.auth_group_permissions IS 'TRIAL';
          public          postgres    false    205            �           0    0     COLUMN auth_group_permissions.id    COMMENT     ?   COMMENT ON COLUMN public.auth_group_permissions.id IS 'TRIAL';
          public          postgres    false    205            �           0    0 &   COLUMN auth_group_permissions.group_id    COMMENT     E   COMMENT ON COLUMN public.auth_group_permissions.group_id IS 'TRIAL';
          public          postgres    false    205            �           0    0 +   COLUMN auth_group_permissions.permission_id    COMMENT     J   COMMENT ON COLUMN public.auth_group_permissions.permission_id IS 'TRIAL';
          public          postgres    false    205            �           0    0 &   COLUMN auth_group_permissions.trial586    COMMENT     E   COMMENT ON COLUMN public.auth_group_permissions.trial586 IS 'TRIAL';
          public          postgres    false    205            �            1259    123086    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    204            �            1259    123099    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL,
    name character varying(255) NOT NULL,
    trial590 character(1)
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �           0    0    TABLE auth_permission    COMMENT     4   COMMENT ON TABLE public.auth_permission IS 'TRIAL';
          public          postgres    false    207            �           0    0    COLUMN auth_permission.id    COMMENT     8   COMMENT ON COLUMN public.auth_permission.id IS 'TRIAL';
          public          postgres    false    207            �           0    0 &   COLUMN auth_permission.content_type_id    COMMENT     E   COMMENT ON COLUMN public.auth_permission.content_type_id IS 'TRIAL';
          public          postgres    false    207            �           0    0    COLUMN auth_permission.codename    COMMENT     >   COMMENT ON COLUMN public.auth_permission.codename IS 'TRIAL';
          public          postgres    false    207            �           0    0    COLUMN auth_permission.name    COMMENT     :   COMMENT ON COLUMN public.auth_permission.name IS 'TRIAL';
          public          postgres    false    207            �           0    0    COLUMN auth_permission.trial590    COMMENT     >   COMMENT ON COLUMN public.auth_permission.trial590 IS 'TRIAL';
          public          postgres    false    207            �            1259    123097    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    123109 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp without time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp without time zone NOT NULL,
    last_name character varying(150) NOT NULL,
    trial590 character(1)
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �           0    0    TABLE auth_user    COMMENT     .   COMMENT ON TABLE public.auth_user IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.id    COMMENT     2   COMMENT ON COLUMN public.auth_user.id IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.password    COMMENT     8   COMMENT ON COLUMN public.auth_user.password IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.last_login    COMMENT     :   COMMENT ON COLUMN public.auth_user.last_login IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.is_superuser    COMMENT     <   COMMENT ON COLUMN public.auth_user.is_superuser IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.username    COMMENT     8   COMMENT ON COLUMN public.auth_user.username IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.first_name    COMMENT     :   COMMENT ON COLUMN public.auth_user.first_name IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.email    COMMENT     5   COMMENT ON COLUMN public.auth_user.email IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.is_staff    COMMENT     8   COMMENT ON COLUMN public.auth_user.is_staff IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.is_active    COMMENT     9   COMMENT ON COLUMN public.auth_user.is_active IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.date_joined    COMMENT     ;   COMMENT ON COLUMN public.auth_user.date_joined IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.last_name    COMMENT     9   COMMENT ON COLUMN public.auth_user.last_name IS 'TRIAL';
          public          postgres    false    209            �           0    0    COLUMN auth_user.trial590    COMMENT     8   COMMENT ON COLUMN public.auth_user.trial590 IS 'TRIAL';
          public          postgres    false    209            �            1259    123120    auth_user_groups    TABLE     �   CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL,
    trial590 character(1)
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �           0    0    TABLE auth_user_groups    COMMENT     5   COMMENT ON TABLE public.auth_user_groups IS 'TRIAL';
          public          postgres    false    211            �           0    0    COLUMN auth_user_groups.id    COMMENT     9   COMMENT ON COLUMN public.auth_user_groups.id IS 'TRIAL';
          public          postgres    false    211            �           0    0    COLUMN auth_user_groups.user_id    COMMENT     >   COMMENT ON COLUMN public.auth_user_groups.user_id IS 'TRIAL';
          public          postgres    false    211            �           0    0     COLUMN auth_user_groups.group_id    COMMENT     ?   COMMENT ON COLUMN public.auth_user_groups.group_id IS 'TRIAL';
          public          postgres    false    211            �           0    0     COLUMN auth_user_groups.trial590    COMMENT     ?   COMMENT ON COLUMN public.auth_user_groups.trial590 IS 'TRIAL';
          public          postgres    false    211            �            1259    123118    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    211            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210            �            1259    123107    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    209            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    208            �            1259    123131    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial593 character(1)
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �           0    0     TABLE auth_user_user_permissions    COMMENT     ?   COMMENT ON TABLE public.auth_user_user_permissions IS 'TRIAL';
          public          postgres    false    213            �           0    0 $   COLUMN auth_user_user_permissions.id    COMMENT     C   COMMENT ON COLUMN public.auth_user_user_permissions.id IS 'TRIAL';
          public          postgres    false    213            �           0    0 )   COLUMN auth_user_user_permissions.user_id    COMMENT     H   COMMENT ON COLUMN public.auth_user_user_permissions.user_id IS 'TRIAL';
          public          postgres    false    213            �           0    0 /   COLUMN auth_user_user_permissions.permission_id    COMMENT     N   COMMENT ON COLUMN public.auth_user_user_permissions.permission_id IS 'TRIAL';
          public          postgres    false    213            �           0    0 *   COLUMN auth_user_user_permissions.trial593    COMMENT     I   COMMENT ON COLUMN public.auth_user_user_permissions.trial593 IS 'TRIAL';
          public          postgres    false    213            �            1259    123129 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    213            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    212            �            1259    123142    catalog_author    TABLE     �   CREATE TABLE public.catalog_author (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    date_of_birth date,
    date_of_death date,
    trial593 character(1)
);
 "   DROP TABLE public.catalog_author;
       public         heap    postgres    false            �           0    0    TABLE catalog_author    COMMENT     3   COMMENT ON TABLE public.catalog_author IS 'TRIAL';
          public          postgres    false    215            �           0    0    COLUMN catalog_author.id    COMMENT     7   COMMENT ON COLUMN public.catalog_author.id IS 'TRIAL';
          public          postgres    false    215            �           0    0     COLUMN catalog_author.first_name    COMMENT     ?   COMMENT ON COLUMN public.catalog_author.first_name IS 'TRIAL';
          public          postgres    false    215            �           0    0    COLUMN catalog_author.last_name    COMMENT     >   COMMENT ON COLUMN public.catalog_author.last_name IS 'TRIAL';
          public          postgres    false    215            �           0    0 #   COLUMN catalog_author.date_of_birth    COMMENT     B   COMMENT ON COLUMN public.catalog_author.date_of_birth IS 'TRIAL';
          public          postgres    false    215            �           0    0 #   COLUMN catalog_author.date_of_death    COMMENT     B   COMMENT ON COLUMN public.catalog_author.date_of_death IS 'TRIAL';
          public          postgres    false    215            �           0    0    COLUMN catalog_author.trial593    COMMENT     =   COMMENT ON COLUMN public.catalog_author.trial593 IS 'TRIAL';
          public          postgres    false    215            �            1259    123140    catalog_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.catalog_author_id_seq;
       public          postgres    false    215            �           0    0    catalog_author_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.catalog_author_id_seq OWNED BY public.catalog_author.id;
          public          postgres    false    214            �            1259    123150    catalog_book    TABLE     �   CREATE TABLE public.catalog_book (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    author_id integer,
    summary text NOT NULL,
    isbn character varying(13) NOT NULL,
    trial593 character(1)
);
     DROP TABLE public.catalog_book;
       public         heap    postgres    false            �           0    0    TABLE catalog_book    COMMENT     1   COMMENT ON TABLE public.catalog_book IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN catalog_book.id    COMMENT     5   COMMENT ON COLUMN public.catalog_book.id IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN catalog_book.title    COMMENT     8   COMMENT ON COLUMN public.catalog_book.title IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN catalog_book.author_id    COMMENT     <   COMMENT ON COLUMN public.catalog_book.author_id IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN catalog_book.summary    COMMENT     :   COMMENT ON COLUMN public.catalog_book.summary IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN catalog_book.isbn    COMMENT     7   COMMENT ON COLUMN public.catalog_book.isbn IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN catalog_book.trial593    COMMENT     ;   COMMENT ON COLUMN public.catalog_book.trial593 IS 'TRIAL';
          public          postgres    false    217            �            1259    123162    catalog_book_genre    TABLE     �   CREATE TABLE public.catalog_book_genre (
    id integer NOT NULL,
    book_id integer NOT NULL,
    genre_id integer NOT NULL,
    trial593 character(1)
);
 &   DROP TABLE public.catalog_book_genre;
       public         heap    postgres    false            �           0    0    TABLE catalog_book_genre    COMMENT     7   COMMENT ON TABLE public.catalog_book_genre IS 'TRIAL';
          public          postgres    false    219            �           0    0    COLUMN catalog_book_genre.id    COMMENT     ;   COMMENT ON COLUMN public.catalog_book_genre.id IS 'TRIAL';
          public          postgres    false    219            �           0    0 !   COLUMN catalog_book_genre.book_id    COMMENT     @   COMMENT ON COLUMN public.catalog_book_genre.book_id IS 'TRIAL';
          public          postgres    false    219                        0    0 "   COLUMN catalog_book_genre.genre_id    COMMENT     A   COMMENT ON COLUMN public.catalog_book_genre.genre_id IS 'TRIAL';
          public          postgres    false    219                       0    0 "   COLUMN catalog_book_genre.trial593    COMMENT     A   COMMENT ON COLUMN public.catalog_book_genre.trial593 IS 'TRIAL';
          public          postgres    false    219            �            1259    123160    catalog_book_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_book_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.catalog_book_genre_id_seq;
       public          postgres    false    219                       0    0    catalog_book_genre_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.catalog_book_genre_id_seq OWNED BY public.catalog_book_genre.id;
          public          postgres    false    218            �            1259    123148    catalog_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.catalog_book_id_seq;
       public          postgres    false    217                       0    0    catalog_book_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.catalog_book_id_seq OWNED BY public.catalog_book.id;
          public          postgres    false    216            �            1259    123171    catalog_bookinstance    TABLE     �   CREATE TABLE public.catalog_bookinstance (
    id character(32) NOT NULL,
    book_id integer,
    imprint character varying(200) NOT NULL,
    due_back date,
    borrower_id integer,
    status character varying(1) NOT NULL,
    trial596 character(1)
);
 (   DROP TABLE public.catalog_bookinstance;
       public         heap    postgres    false                       0    0    TABLE catalog_bookinstance    COMMENT     9   COMMENT ON TABLE public.catalog_bookinstance IS 'TRIAL';
          public          postgres    false    220                       0    0    COLUMN catalog_bookinstance.id    COMMENT     =   COMMENT ON COLUMN public.catalog_bookinstance.id IS 'TRIAL';
          public          postgres    false    220                       0    0 #   COLUMN catalog_bookinstance.book_id    COMMENT     B   COMMENT ON COLUMN public.catalog_bookinstance.book_id IS 'TRIAL';
          public          postgres    false    220                       0    0 #   COLUMN catalog_bookinstance.imprint    COMMENT     B   COMMENT ON COLUMN public.catalog_bookinstance.imprint IS 'TRIAL';
          public          postgres    false    220                       0    0 $   COLUMN catalog_bookinstance.due_back    COMMENT     C   COMMENT ON COLUMN public.catalog_bookinstance.due_back IS 'TRIAL';
          public          postgres    false    220            	           0    0 '   COLUMN catalog_bookinstance.borrower_id    COMMENT     F   COMMENT ON COLUMN public.catalog_bookinstance.borrower_id IS 'TRIAL';
          public          postgres    false    220            
           0    0 "   COLUMN catalog_bookinstance.status    COMMENT     A   COMMENT ON COLUMN public.catalog_bookinstance.status IS 'TRIAL';
          public          postgres    false    220                       0    0 $   COLUMN catalog_bookinstance.trial596    COMMENT     C   COMMENT ON COLUMN public.catalog_bookinstance.trial596 IS 'TRIAL';
          public          postgres    false    220            �            1259    123180    catalog_genre    TABLE     �   CREATE TABLE public.catalog_genre (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    trial596 character(1)
);
 !   DROP TABLE public.catalog_genre;
       public         heap    postgres    false                       0    0    TABLE catalog_genre    COMMENT     2   COMMENT ON TABLE public.catalog_genre IS 'TRIAL';
          public          postgres    false    222                       0    0    COLUMN catalog_genre.id    COMMENT     6   COMMENT ON COLUMN public.catalog_genre.id IS 'TRIAL';
          public          postgres    false    222                       0    0    COLUMN catalog_genre.name    COMMENT     8   COMMENT ON COLUMN public.catalog_genre.name IS 'TRIAL';
          public          postgres    false    222                       0    0    COLUMN catalog_genre.trial596    COMMENT     <   COMMENT ON COLUMN public.catalog_genre.trial596 IS 'TRIAL';
          public          postgres    false    222            �            1259    123178    catalog_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.catalog_genre_id_seq;
       public          postgres    false    222                       0    0    catalog_genre_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.catalog_genre_id_seq OWNED BY public.catalog_genre.id;
          public          postgres    false    221            �            1259    123188    django_admin_log    TABLE     X  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp without time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    action_flag smallint NOT NULL,
    trial596 character(1)
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false                       0    0    TABLE django_admin_log    COMMENT     5   COMMENT ON TABLE public.django_admin_log IS 'TRIAL';
          public          postgres    false    224                       0    0    COLUMN django_admin_log.id    COMMENT     9   COMMENT ON COLUMN public.django_admin_log.id IS 'TRIAL';
          public          postgres    false    224                       0    0 #   COLUMN django_admin_log.action_time    COMMENT     B   COMMENT ON COLUMN public.django_admin_log.action_time IS 'TRIAL';
          public          postgres    false    224                       0    0 !   COLUMN django_admin_log.object_id    COMMENT     @   COMMENT ON COLUMN public.django_admin_log.object_id IS 'TRIAL';
          public          postgres    false    224                       0    0 #   COLUMN django_admin_log.object_repr    COMMENT     B   COMMENT ON COLUMN public.django_admin_log.object_repr IS 'TRIAL';
          public          postgres    false    224                       0    0 &   COLUMN django_admin_log.change_message    COMMENT     E   COMMENT ON COLUMN public.django_admin_log.change_message IS 'TRIAL';
          public          postgres    false    224                       0    0 '   COLUMN django_admin_log.content_type_id    COMMENT     F   COMMENT ON COLUMN public.django_admin_log.content_type_id IS 'TRIAL';
          public          postgres    false    224                       0    0    COLUMN django_admin_log.user_id    COMMENT     >   COMMENT ON COLUMN public.django_admin_log.user_id IS 'TRIAL';
          public          postgres    false    224                       0    0 #   COLUMN django_admin_log.action_flag    COMMENT     B   COMMENT ON COLUMN public.django_admin_log.action_flag IS 'TRIAL';
          public          postgres    false    224                       0    0     COLUMN django_admin_log.trial596    COMMENT     ?   COMMENT ON COLUMN public.django_admin_log.trial596 IS 'TRIAL';
          public          postgres    false    224            �            1259    123186    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    224                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    223            �            1259    123201    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    trial596 character(1)
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false                       0    0    TABLE django_content_type    COMMENT     8   COMMENT ON TABLE public.django_content_type IS 'TRIAL';
          public          postgres    false    226                       0    0    COLUMN django_content_type.id    COMMENT     <   COMMENT ON COLUMN public.django_content_type.id IS 'TRIAL';
          public          postgres    false    226                       0    0 $   COLUMN django_content_type.app_label    COMMENT     C   COMMENT ON COLUMN public.django_content_type.app_label IS 'TRIAL';
          public          postgres    false    226                       0    0     COLUMN django_content_type.model    COMMENT     ?   COMMENT ON COLUMN public.django_content_type.model IS 'TRIAL';
          public          postgres    false    226                        0    0 #   COLUMN django_content_type.trial596    COMMENT     B   COMMENT ON COLUMN public.django_content_type.trial596 IS 'TRIAL';
          public          postgres    false    226            �            1259    123199    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    226            !           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    225            �            1259    123210    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp without time zone NOT NULL,
    trial599 character(1)
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            "           0    0    TABLE django_migrations    COMMENT     6   COMMENT ON TABLE public.django_migrations IS 'TRIAL';
          public          postgres    false    228            #           0    0    COLUMN django_migrations.id    COMMENT     :   COMMENT ON COLUMN public.django_migrations.id IS 'TRIAL';
          public          postgres    false    228            $           0    0    COLUMN django_migrations.app    COMMENT     ;   COMMENT ON COLUMN public.django_migrations.app IS 'TRIAL';
          public          postgres    false    228            %           0    0    COLUMN django_migrations.name    COMMENT     <   COMMENT ON COLUMN public.django_migrations.name IS 'TRIAL';
          public          postgres    false    228            &           0    0     COLUMN django_migrations.applied    COMMENT     ?   COMMENT ON COLUMN public.django_migrations.applied IS 'TRIAL';
          public          postgres    false    228            '           0    0 !   COLUMN django_migrations.trial599    COMMENT     @   COMMENT ON COLUMN public.django_migrations.trial599 IS 'TRIAL';
          public          postgres    false    228            �            1259    123208    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    228            (           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    227            �            1259    123219    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp without time zone NOT NULL,
    trial599 character(1)
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            )           0    0    TABLE django_session    COMMENT     3   COMMENT ON TABLE public.django_session IS 'TRIAL';
          public          postgres    false    229            *           0    0 !   COLUMN django_session.session_key    COMMENT     @   COMMENT ON COLUMN public.django_session.session_key IS 'TRIAL';
          public          postgres    false    229            +           0    0 "   COLUMN django_session.session_data    COMMENT     A   COMMENT ON COLUMN public.django_session.session_data IS 'TRIAL';
          public          postgres    false    229            ,           0    0 !   COLUMN django_session.expire_date    COMMENT     @   COMMENT ON COLUMN public.django_session.expire_date IS 'TRIAL';
          public          postgres    false    229            -           0    0    COLUMN django_session.trial599    COMMENT     =   COMMENT ON COLUMN public.django_session.trial599 IS 'TRIAL';
          public          postgres    false    229            �            1259    123228    sqlite_sequence    TABLE     `   CREATE TABLE public.sqlite_sequence (
    name text,
    seq text,
    trial599 character(1)
);
 #   DROP TABLE public.sqlite_sequence;
       public         heap    postgres    false            .           0    0    TABLE sqlite_sequence    COMMENT     4   COMMENT ON TABLE public.sqlite_sequence IS 'TRIAL';
          public          postgres    false    230            /           0    0    COLUMN sqlite_sequence.name    COMMENT     :   COMMENT ON COLUMN public.sqlite_sequence.name IS 'TRIAL';
          public          postgres    false    230            0           0    0    COLUMN sqlite_sequence.seq    COMMENT     9   COMMENT ON COLUMN public.sqlite_sequence.seq IS 'TRIAL';
          public          postgres    false    230            1           0    0    COLUMN sqlite_sequence.trial599    COMMENT     >   COMMENT ON COLUMN public.sqlite_sequence.trial599 IS 'TRIAL';
          public          postgres    false    230            �
           2604    123083    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    123091    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    123102    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    123112    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    123123    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    123134    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    123145    catalog_author id    DEFAULT     v   ALTER TABLE ONLY public.catalog_author ALTER COLUMN id SET DEFAULT nextval('public.catalog_author_id_seq'::regclass);
 @   ALTER TABLE public.catalog_author ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    123153    catalog_book id    DEFAULT     r   ALTER TABLE ONLY public.catalog_book ALTER COLUMN id SET DEFAULT nextval('public.catalog_book_id_seq'::regclass);
 >   ALTER TABLE public.catalog_book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    123165    catalog_book_genre id    DEFAULT     ~   ALTER TABLE ONLY public.catalog_book_genre ALTER COLUMN id SET DEFAULT nextval('public.catalog_book_genre_id_seq'::regclass);
 D   ALTER TABLE public.catalog_book_genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    123183    catalog_genre id    DEFAULT     t   ALTER TABLE ONLY public.catalog_genre ALTER COLUMN id SET DEFAULT nextval('public.catalog_genre_id_seq'::regclass);
 ?   ALTER TABLE public.catalog_genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �
           2604    123191    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �
           2604    123204    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �
           2604    123213    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �          0    123080 
   auth_group 
   TABLE DATA           8   COPY public.auth_group (id, name, trial586) FROM stdin;
    public          postgres    false    203   ��       �          0    123088    auth_group_permissions 
   TABLE DATA           W   COPY public.auth_group_permissions (id, group_id, permission_id, trial586) FROM stdin;
    public          postgres    false    205   ��       �          0    123099    auth_permission 
   TABLE DATA           X   COPY public.auth_permission (id, content_type_id, codename, name, trial590) FROM stdin;
    public          postgres    false    207   ��       �          0    123109 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name, trial590) FROM stdin;
    public          postgres    false    209   ��       �          0    123120    auth_user_groups 
   TABLE DATA           K   COPY public.auth_user_groups (id, user_id, group_id, trial590) FROM stdin;
    public          postgres    false    211   ��       �          0    123131    auth_user_user_permissions 
   TABLE DATA           Z   COPY public.auth_user_user_permissions (id, user_id, permission_id, trial593) FROM stdin;
    public          postgres    false    213   ��       �          0    123142    catalog_author 
   TABLE DATA           k   COPY public.catalog_author (id, first_name, last_name, date_of_birth, date_of_death, trial593) FROM stdin;
    public          postgres    false    215   ��       �          0    123150    catalog_book 
   TABLE DATA           U   COPY public.catalog_book (id, title, author_id, summary, isbn, trial593) FROM stdin;
    public          postgres    false    217   ��       �          0    123162    catalog_book_genre 
   TABLE DATA           M   COPY public.catalog_book_genre (id, book_id, genre_id, trial593) FROM stdin;
    public          postgres    false    219   A�       �          0    123171    catalog_bookinstance 
   TABLE DATA           m   COPY public.catalog_bookinstance (id, book_id, imprint, due_back, borrower_id, status, trial596) FROM stdin;
    public          postgres    false    220   u�       �          0    123180    catalog_genre 
   TABLE DATA           ;   COPY public.catalog_genre (id, name, trial596) FROM stdin;
    public          postgres    false    222   %      �          0    123188    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag, trial596) FROM stdin;
    public          postgres    false    224   t      �          0    123201    django_content_type 
   TABLE DATA           M   COPY public.django_content_type (id, app_label, model, trial596) FROM stdin;
    public          postgres    false    226   ^      �          0    123210    django_migrations 
   TABLE DATA           M   COPY public.django_migrations (id, app, name, applied, trial599) FROM stdin;
    public          postgres    false    228   �      �          0    123219    django_session 
   TABLE DATA           Z   COPY public.django_session (session_key, session_data, expire_date, trial599) FROM stdin;
    public          postgres    false    229   �      �          0    123228    sqlite_sequence 
   TABLE DATA           >   COPY public.sqlite_sequence (name, seq, trial599) FROM stdin;
    public          postgres    false    230   �      2           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    202            3           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 73, true);
          public          postgres    false    204            4           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 41, true);
          public          postgres    false    206            5           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);
          public          postgres    false    210            6           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          postgres    false    208            7           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 71, true);
          public          postgres    false    212            8           0    0    catalog_author_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.catalog_author_id_seq', 3, true);
          public          postgres    false    214            9           0    0    catalog_book_genre_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.catalog_book_genre_id_seq', 5, true);
          public          postgres    false    218            :           0    0    catalog_book_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.catalog_book_id_seq', 4, true);
          public          postgres    false    216            ;           0    0    catalog_genre_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.catalog_genre_id_seq', 3, true);
          public          postgres    false    221            <           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 30, true);
          public          postgres    false    223            =           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    225            >           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 17, true);
          public          postgres    false    227            �
           2606    123093 0   auth_group_permissions auth_group_permissions_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pk PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pk;
       public            postgres    false    205            �
           2606    123104 "   auth_permission auth_permission_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pk;
       public            postgres    false    207            �
           2606    123125 $   auth_user_groups auth_user_groups_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pk;
       public            postgres    false    211            �
           2606    123136 8   auth_user_user_permissions auth_user_user_permissions_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pk PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pk;
       public            postgres    false    213            �
           2606    123147     catalog_author catalog_author_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.catalog_author
    ADD CONSTRAINT catalog_author_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.catalog_author DROP CONSTRAINT catalog_author_pk;
       public            postgres    false    215                       2606    123167 (   catalog_book_genre catalog_book_genre_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT catalog_book_genre_pk PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.catalog_book_genre DROP CONSTRAINT catalog_book_genre_pk;
       public            postgres    false    219                        2606    123158    catalog_book catalog_book_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT catalog_book_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.catalog_book DROP CONSTRAINT catalog_book_pk;
       public            postgres    false    217                       2606    123185    catalog_genre catalog_genre_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.catalog_genre
    ADD CONSTRAINT catalog_genre_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.catalog_genre DROP CONSTRAINT catalog_genre_pk;
       public            postgres    false    222                       2606    123196 $   django_admin_log django_admin_log_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pk;
       public            postgres    false    224                       2606    123206 *   django_content_type django_content_type_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pk PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pk;
       public            postgres    false    226                       2606    123218 &   django_migrations django_migrations_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pk PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pk;
       public            postgres    false    228            �
           2606    123085    auth_group idx_1dd9f96b968e961b 
   CONSTRAINT     c   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT idx_1dd9f96b968e961b PRIMARY KEY (name, id);
 I   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT idx_1dd9f96b968e961b;
       public            postgres    false    203    203                       2606    123226 #   django_session idx_ae7220b77ed1bf20 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT idx_ae7220b77ed1bf20 PRIMARY KEY (session_key);
 M   ALTER TABLE ONLY public.django_session DROP CONSTRAINT idx_ae7220b77ed1bf20;
       public            postgres    false    229            �
           2606    123117    auth_user idx_af3c9c759ecd0729 
   CONSTRAINT     f   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT idx_af3c9c759ecd0729 PRIMARY KEY (username, id);
 H   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT idx_af3c9c759ecd0729;
       public            postgres    false    209    209            
           2606    123175 )   catalog_bookinstance idx_e756a16a622d655a 
   CONSTRAINT     g   ALTER TABLE ONLY public.catalog_bookinstance
    ADD CONSTRAINT idx_e756a16a622d655a PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.catalog_bookinstance DROP CONSTRAINT idx_e756a16a622d655a;
       public            postgres    false    220                       1259    123159    idx_238d42c8c2f762d7    INDEX     R   CREATE INDEX idx_238d42c8c2f762d7 ON public.catalog_book USING btree (author_id);
 (   DROP INDEX public.idx_238d42c8c2f762d7;
       public            postgres    false    217            �
           1259    123138    idx_24e04f2c19ffb8e2    INDEX     ^   CREATE INDEX idx_24e04f2c19ffb8e2 ON public.auth_user_user_permissions USING btree (user_id);
 (   DROP INDEX public.idx_24e04f2c19ffb8e2;
       public            postgres    false    213            �
           1259    123127    idx_2d2091cde2d24695    INDEX     T   CREATE INDEX idx_2d2091cde2d24695 ON public.auth_user_groups USING btree (user_id);
 (   DROP INDEX public.idx_2d2091cde2d24695;
       public            postgres    false    211            �
           1259    123137    idx_4170e6da639581f0    INDEX     d   CREATE INDEX idx_4170e6da639581f0 ON public.auth_user_user_permissions USING btree (permission_id);
 (   DROP INDEX public.idx_4170e6da639581f0;
       public            postgres    false    213                       1259    123176    idx_56a6c7a83f5513ba    INDEX     \   CREATE INDEX idx_56a6c7a83f5513ba ON public.catalog_bookinstance USING btree (borrower_id);
 (   DROP INDEX public.idx_56a6c7a83f5513ba;
       public            postgres    false    220                       1259    123169    idx_57a3701da5eaef5f    INDEX     V   CREATE INDEX idx_57a3701da5eaef5f ON public.catalog_book_genre USING btree (book_id);
 (   DROP INDEX public.idx_57a3701da5eaef5f;
       public            postgres    false    219                       1259    123177    idx_5971eb4b9c964526    INDEX     X   CREATE INDEX idx_5971eb4b9c964526 ON public.catalog_bookinstance USING btree (book_id);
 (   DROP INDEX public.idx_5971eb4b9c964526;
       public            postgres    false    220            �
           1259    123139    idx_660cb561f1e5091e    INDEX     t   CREATE UNIQUE INDEX idx_660cb561f1e5091e ON public.auth_user_user_permissions USING btree (user_id, permission_id);
 (   DROP INDEX public.idx_660cb561f1e5091e;
       public            postgres    false    213    213            �
           1259    123096    idx_727914ba6a611113    INDEX     q   CREATE UNIQUE INDEX idx_727914ba6a611113 ON public.auth_group_permissions USING btree (group_id, permission_id);
 (   DROP INDEX public.idx_727914ba6a611113;
       public            postgres    false    205    205            �
           1259    123105    idx_7e2eb30aa3aca7bf    INDEX     [   CREATE INDEX idx_7e2eb30aa3aca7bf ON public.auth_permission USING btree (content_type_id);
 (   DROP INDEX public.idx_7e2eb30aa3aca7bf;
       public            postgres    false    207            �
           1259    123126    idx_834491cf1dc64ff7    INDEX     U   CREATE INDEX idx_834491cf1dc64ff7 ON public.auth_user_groups USING btree (group_id);
 (   DROP INDEX public.idx_834491cf1dc64ff7;
       public            postgres    false    211            �
           1259    123094    idx_8451037943251584    INDEX     `   CREATE INDEX idx_8451037943251584 ON public.auth_group_permissions USING btree (permission_id);
 (   DROP INDEX public.idx_8451037943251584;
       public            postgres    false    205                       1259    123207    idx_84f63b87b8d8b29c    INDEX     g   CREATE UNIQUE INDEX idx_84f63b87b8d8b29c ON public.django_content_type USING btree (app_label, model);
 (   DROP INDEX public.idx_84f63b87b8d8b29c;
       public            postgres    false    226    226                       1259    123227    idx_87c4f8d449ff6a92    INDEX     V   CREATE INDEX idx_87c4f8d449ff6a92 ON public.django_session USING btree (expire_date);
 (   DROP INDEX public.idx_87c4f8d449ff6a92;
       public            postgres    false    229            �
           1259    123128    idx_a8609f37aa4f1d37    INDEX     e   CREATE UNIQUE INDEX idx_a8609f37aa4f1d37 ON public.auth_user_groups USING btree (user_id, group_id);
 (   DROP INDEX public.idx_a8609f37aa4f1d37;
       public            postgres    false    211    211            �
           1259    123106    idx_ab4d8dd74b542ea2    INDEX     l   CREATE UNIQUE INDEX idx_ab4d8dd74b542ea2 ON public.auth_permission USING btree (content_type_id, codename);
 (   DROP INDEX public.idx_ab4d8dd74b542ea2;
       public            postgres    false    207    207                       1259    123198    idx_af7087131bf127b1    INDEX     \   CREATE INDEX idx_af7087131bf127b1 ON public.django_admin_log USING btree (content_type_id);
 (   DROP INDEX public.idx_af7087131bf127b1;
       public            postgres    false    224                       1259    123168    idx_b440397c634b156f    INDEX     W   CREATE INDEX idx_b440397c634b156f ON public.catalog_book_genre USING btree (genre_id);
 (   DROP INDEX public.idx_b440397c634b156f;
       public            postgres    false    219                       1259    123197    idx_c5e70d62067adbde    INDEX     T   CREATE INDEX idx_c5e70d62067adbde ON public.django_admin_log USING btree (user_id);
 (   DROP INDEX public.idx_c5e70d62067adbde;
       public            postgres    false    224                       1259    123170    idx_d0a8407c86079038    INDEX     g   CREATE UNIQUE INDEX idx_d0a8407c86079038 ON public.catalog_book_genre USING btree (book_id, genre_id);
 (   DROP INDEX public.idx_d0a8407c86079038;
       public            postgres    false    219    219            �
           1259    123095    idx_ef9915b197a0b14b    INDEX     [   CREATE INDEX idx_ef9915b197a0b14b ON public.auth_group_permissions USING btree (group_id);
 (   DROP INDEX public.idx_ef9915b197a0b14b;
       public            postgres    false    205                       2606    123244 .   auth_user_user_permissions fk_06a819439bc5efab    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT fk_06a819439bc5efab FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);
 X   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT fk_06a819439bc5efab;
       public          postgres    false    207    213    2798                       2606    123249     catalog_book fk_26b64c5b2cffd92d    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT fk_26b64c5b2cffd92d FOREIGN KEY (author_id) REFERENCES public.catalog_author(id);
 J   ALTER TABLE ONLY public.catalog_book DROP CONSTRAINT fk_26b64c5b2cffd92d;
       public          postgres    false    217    2814    215                       2606    123239 #   auth_permission fk_29a146382708fca3    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT fk_29a146382708fca3 FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);
 M   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT fk_29a146382708fca3;
       public          postgres    false    226    207    2834                       2606    123264 (   catalog_bookinstance fk_65502e5c6eba3383    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_bookinstance
    ADD CONSTRAINT fk_65502e5c6eba3383 FOREIGN KEY (book_id) REFERENCES public.catalog_book(id);
 R   ALTER TABLE ONLY public.catalog_bookinstance DROP CONSTRAINT fk_65502e5c6eba3383;
       public          postgres    false    220    2816    217                        2606    123269 $   django_admin_log fk_677aea29a48248c0    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT fk_677aea29a48248c0 FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);
 N   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT fk_677aea29a48248c0;
       public          postgres    false    2834    224    226                       2606    123234 *   auth_group_permissions fk_70118ddb2675a35c    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT fk_70118ddb2675a35c FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);
 T   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT fk_70118ddb2675a35c;
       public          postgres    false    205    2798    207                       2606    123254 &   catalog_book_genre fk_839a6f1e4ed2b18b    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT fk_839a6f1e4ed2b18b FOREIGN KEY (genre_id) REFERENCES public.catalog_genre(id);
 P   ALTER TABLE ONLY public.catalog_book_genre DROP CONSTRAINT fk_839a6f1e4ed2b18b;
       public          postgres    false    219    222    2828                       2606    123259 &   catalog_book_genre fk_a0a46a6633c64a37    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT fk_a0a46a6633c64a37 FOREIGN KEY (book_id) REFERENCES public.catalog_book(id);
 P   ALTER TABLE ONLY public.catalog_book_genre DROP CONSTRAINT fk_a0a46a6633c64a37;
       public          postgres    false    219    217    2816            �   4   x�3���L*J,�L�+��2��,�,�/��9Sr3�2�K�!"1z\\\ ���      �     x�%��q�0��TLF�}��#��_��GN�x��l�q����=g����Y{~��=#7�6W>�.�C�Z�%Ѭ�D��D�D�_�� A!���0�!a#1���Ha$�0C����H��H��H��(��B�P���6��oM�]�%�����}6�]�|Q]���r5�EwP^�{�������
��34�gh������1�34�gh����1<�`x������3�g?��J�a0<�`x����3�p0<�a���������h      �   �  x�]�Mn�0��s�����ϺG(�J(% �AIh���e<��^z���B]r��a����:���`RRR;9$��2������]����V��W��m�ZT����,��H�7:$GF�3�Bsg��4�4�F�b٫�j���zJ�=�<�5G���@ܶ#�T Q�N�F@�**y-z�:��%w�=g8R�p��p����[US�i2+�����%�g)a;X�9w�=6�/���h�ȰA����X窡�E��ΝA
��{��Vr�+@J��y�V�}c���7jO�np�ޘ��j���ޘC�}cB�s�W��L�MB�_���!���H�B8�P��.U/W���9�$�)t�%^Z�Sc�kv��`���D�V�a��k�L��+!�Mp��8zw��8�s*��6G������۷5��c�o�Y����Q}��~�aIexH�?�$�/�      �   �  x�m�_o�0 �g�)�����>'Nbi���AJ
	�h��PB�p�|�%[ש��t:ٺ�N&h��!�,#:S�����':���N�<qY��z]�a?Nrǳ��P?���?E�b��*�� ������PN0�b`�NQ�ʍ�мIq�N�����"��u�7���z�X7�����D����.-�ׁ���f<��o�L�se���<����p���e9ɯb��Q�o���Sٳ�J��g/pjq���QP��Y��FV5ڊ�5�F8��^����^w����a�Jŷ$�`�8yӕ� ��Ull�%�e�b�d�������8m�*�X�^D�?)��X�E��OH9� E�J�:��ݙ7�G�?+/D%�{�ƛ;��[{{�g��~��==�߲�/��b���5�6�a4�IH!c�C�'��o���r����3j���C�t:� �Ĺ|      �      x�3�4�4��2�4�B�b���� =�      �     x�-�ɍ�@ߣ`��CR~n�q�E��]�i��+��96�VH£P
�ThB(a+\�T�	��Z!NҐ�;�o�}C�	>�'�@�Cb�"p$��#ql��8�Ƒ86�¡j��U-����oo%?U��}����Y��(�0��Ţ�z��[�j"ǂ�R�(�N��y|� �2v��<�� _�~����oW(<^�x������q4�8����	�'l��q���O88<����G�18<������3O88<�����tq����w�e�      �   �   x�3��vaӅ�^�ua�%�CS3]]#sNCKC �T�Ȃ3�ˈ�+?#�3$?';35���H��P�����X��R���̘�=+5=�8#9��)+5Ĩ٩e�@ACKc�FC# ��B����1F��� O�0�      �   �  x�mVMo�F=˿bn�(B�8�}l�=4h���aM��E(.����&�I��ݦ�}i����l%�������%}3+�JZ���ٙ�޼Yx�V�T���U�V#?�.��߭���9��X��&u�&UY��{���Su�w�>�����oCl�V��+D��=�"n�3lᓪ�jZM������.U�:C���?G��#�5Eо��a��!���rť��ԜT#�XaqRMT�ᬼ���'����>������z�'��� �k��K������;��X��0���1�}$*� �������A:QSH���	ӴN����/�T΃ sm�uШ���^�swcs�_j�W�BC,��G���?b�,7��"7m?Ը��@9b"f"�I��R���?g�py}6G.��
l0�W9����s �?�'�wR�y�����ǀ&b�P���L�8� �ސ-�����(|���8��%�n	��G��LɁ#au��-�ƿ;�Kk�\t1c�{��,��C�g�R��̇�����~ �`s�N��d�<Jlz>؛�182�l"^�� �%S�'aD^"�����Gp�hdb�3H>�X��G)ކ�� ���b��e�(�ǳ�3�Fp	���A�Rn�w�TQ�pC�+�7K������%��T��2z��YK�D�!��O��%���$��_z2�X櫉]=�@m���ψ��u 3BJa�7���p��e #QB�sn3��17�uc�j�B��Y�.p��S�)O�Tz9faG�9^�%fs��y$���7)�5B�p}.ٳ�m����KW����]\9�k�ۚ���ۦ���G^X�'�Sa��LJ��u�6I��3���D���󢎥�:6/(j���.Ǚ�ٸiR�g:2MDGN���4YGE?Ӝ�f�I�m������Zڶ�����3ɶ��2i�\��Q����;|��:E���B��`z&�m�����Hg�I[�!6��Y�P�	"����0Q������N��vs�M�s�ӆi@)1Y��9#��L��* tlJ�Nsݠ�/j#�E����SE���晦�\��N��F! ��BU�"�U*�%˩	��K�v7�;}Kw�ki��t�RxC�Ȧ��D X�@�7W�ui�W�ŋ�߀^>7Ca�(y#����M.��ł'��A� �P-��o~�ܓ�����i�;�(Zj+q�iN�q
7�ѯ� ��.0���|�����\��I}M=�2��E��dʴR��Y':JN����8N��rE�A�Yק]���-��Rn޶Gm��fԖ���s���n��'�i+1y��>;�~�9���>9��Ԇm���°H��k��Un�Cx�Q[mY��`V�ٵa�a.��K`��3���іN�hXL��2�6jw6׷no�����c�}cee�_�0�.      �   $   x�3�4�4��2�4�&� V�)�	������ ^��      �   �  x�͒�j�1�g�)�6���2f*����[]C�촴[�]�Rh�v�h\�1�8�p�F9�1$[�	q$��KV*���T�g�l���hk�p?�)���6(�����aZ�ᮞQ�	K����zR?u2E����p�v_��,(��ǜ�U�^�`������W��0�9RNQ}	`I�Ϛ>7HKv{�٬��و��AZ���"z�5S�8޽��>�@�接�UBi��UJ�l���s�� p�����z��d�.�0����cZ����hr<����>+[D��1;c,k���?��D��e��R���&�E�B6�1����%�f;9jG�E�n� %�=,��p������0)��Ciǉ����dx����d���GHH2����ut^���b��.�H�=�tk�����uB{�^�� D}z�      �   ?   x�3�N�L�KNUp�L.�����2�tK�+I,���9=2�K�2�s���Rs��1z\\\ .a      �   �  x��W�j�F���B�MZ���;�B.�bJ���ġ��Y[��*H�@�$��i�J�}�`(��3�ިG��z5�u�4�]XF#i�9�;g�sDF�DԄT%L$ c��`�k�l�r���l�j;�};;mg��'��.$ᓧO��4��b>�J��5a�B���rt\��v�Qy4ٌ�=N��(&	��2��\�SdӢ\�Q��ahBH,�Ҋ�1;v2����a}9c1�Tk��^QO˪��(����h#��q \��2{�|��g����oH�Y�U��C�W���;��ey�zj���v8(�/]6m�A�|�d>��H�x�.�Bww1��_,��2=���/2����'��f�I9��E��\s�.�H&y$4M#��<��rB�Vx��;��O�L@ǔ3#�5�O)����>�%��w�S,C2 �R�I$�q,�@��%x@��O�N����ʰ��Ȏ�䰣cX�Q^����]7�������CLʘI0W�}���7�g�i?�������E�}�����fG�둬��Y�����l>�\��b�V��k�J 5$�m�i�"H��BD\;�[m(����(X�4�<֜���ie�®K�8G�>K�Č��kTaC�w����sޑ�]�2�pl�Q�;W���{S;v\���jW�]5.���^"���b���e��]��[N���x��/�5]@Bp���ȕ�o�����4���p�����(�¨v��}H�n�z
@5k�l�z�,~N�_2�N����J�y�yQX{6��U��1U�:��v��}7}�������l����	���^i�/E��E�Vp�zK�V���˃�3����cV���8w����"aS�1RWv:=������iZL�~h��� J1K�]�lu��p%J=H�\�߭r���]���WB�w2���"6^����0�4D�O��[VyX�)^ZLk/N���0B��7����Rz�	2���u�ԒȂu��Y��TFY�R�H<����U[vS�;\�3u�t���F�LM�6l\b�6��ΰ�u��Ќ�y�v��Rs֛{C�ǥZ�T�_?��M���Ѻ�r����p�s�(#�,��X�~8dCeA���c�S���G�����-��(�W
�c�Vi�a�xo���w����.$X���P?H%��|�|��p�Ϊ���;r���[����ֻ�랢\����,hH��c� ����&�|�      �   �   x�U���0���a���ã�L�h!ȡo_bǎ��o��1&���V&��-`�'d*cRM��v���r�ȪT\ 
��۔I��GP�\�����'���b��E^. �rlɾ[�VBZ��&�0�/A�      �   �  x���]n� F��UtE\��:�8B	�"��\5��$RQS���|��b�a�n����4`����go��`��1���cHJ��^Od�[~{�R���`/�_%8ʰ�%�n	b�0���j��Ç3����˥����U�!�Qbƞ���;�ќ߂?���PL�k����r�0��Y��$����$�:b�]4���O��q3�O3�e,�z$Eƪ�T#у�������Dk�0/� �R��LXsO�@�4(����M�Z��X�ԛ�@D�ĬB�AD�������M�e0`j7�[)�"v��CL��]�!�٥d����\Ǣ���f~4,�$D���H���R�Ƚ�">Hc���D�S���A4
�m-z�Yc���]Ğ�@KF�"rH�������r.T����t�m�@u      �     x���r�8���)��$��Y$m��e0R�cc[�������,�{����L�l0�?������Z������SX5�c�/����F<�5q*l�F��TS���8��86O��'%f��p#:N�qrr�֯����Fn��m���:��^o��a��7�ݵ~-R~�)m"u�ex�2�����[vX��4���m�Я����gd�f�y%ȵ������|�����wd�oHU�H9�I��+Fw.:�ՒP�T����T�d������{f�ઢ�mDAO�yB�{dO,lY�v�(y�����y�p�O���Ciw�ߜ�܍X�v�H#�ȼ��\�tJ�Y ��<��#"�� 므����ƒ�iѮ���'�'6c�8���b[��_�pv�E����X>��#fJ$R�X�+�� �K�CްDVB/zf�;x�i�<\�9����9L�C]��^ Z��`����f�ݙ^�qȆI� �Nn}��Dބ�	���]��wk[���F��E����gr��+ѭ{��F"){P'�A���!�Y��q(� K-��j��*q�&N��.�D�_qb�܉E&��>��N�6�8P�b�
�V���I�mS��Z�1=oY���A�m��RE(N^Z8��ᢗ�JVLɚ��)��>�n�)��ձ�����N�x���qNl<�m�Gp�ߜ�cnt�����'ܿ�NCO�㌸^Y�Z@q�$�<\��f��8eKYPZq�L���L�$�:�O�NX�`N*�q8�X����K3-�e#�ʊ��X���*����<�ܱ�Z.�X8��|:1��d~Q����Q=�o�|�k%qIc�׃��v�i���V<��H�0蟢C?Au09U�TcK��8��w(v��Z�Ayzki�s"^`��[Dc�s-4xb�_n�r�X�L9ۋ��ޮ![�2�������3� �4���fe<J�l<h+f@�f���a���GC}6�?'lq�l�p!n���0A&��	������`PI����0����?!<�} :�]�vl���u����Yh�������{���#�e��~46���^J���R��?���0$>�Ĺ����� �@g=ǂ:N��|�����is��s�3\������o�m}gIɄ�c� �ޜ�}y�zsum�ϐ����]LVT�>�k3L�Ƈ�L������������3�^�\=wBO-�!N�o�ix��.a��� ��$�B,����-'�Z���o8	~$hH�&u�㇇�� ��\�      �   �   x�U�M!F��0Fd�\ĥ	��AT(�g����l����_�CyC�YU���.Lw���^�Ȁ8�t#��g�����*�.FgS�G`����љH%������we�ԍ����t#zNJ?������H��O��LL�_!����1��`�     