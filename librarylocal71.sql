PGDMP                 	        x        	   djangolib    12.4    12.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    114900 	   djangolib    DATABASE     �   CREATE DATABASE djangolib WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE djangolib;
                postgres    false            �            1259    114903 
   auth_group    TABLE     �   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    trial550 character(1)
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �           0    0    TABLE auth_group    COMMENT     /   COMMENT ON TABLE public.auth_group IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN auth_group.id    COMMENT     3   COMMENT ON COLUMN public.auth_group.id IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN auth_group.name    COMMENT     5   COMMENT ON COLUMN public.auth_group.name IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN auth_group.trial550    COMMENT     9   COMMENT ON COLUMN public.auth_group.trial550 IS 'TRIAL';
          public          postgres    false    203            �            1259    114901    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    202            �            1259    114911    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial550 character(1)
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �           0    0    TABLE auth_group_permissions    COMMENT     ;   COMMENT ON TABLE public.auth_group_permissions IS 'TRIAL';
          public          postgres    false    205            �           0    0     COLUMN auth_group_permissions.id    COMMENT     ?   COMMENT ON COLUMN public.auth_group_permissions.id IS 'TRIAL';
          public          postgres    false    205            �           0    0 &   COLUMN auth_group_permissions.group_id    COMMENT     E   COMMENT ON COLUMN public.auth_group_permissions.group_id IS 'TRIAL';
          public          postgres    false    205            �           0    0 +   COLUMN auth_group_permissions.permission_id    COMMENT     J   COMMENT ON COLUMN public.auth_group_permissions.permission_id IS 'TRIAL';
          public          postgres    false    205            �           0    0 &   COLUMN auth_group_permissions.trial550    COMMENT     E   COMMENT ON COLUMN public.auth_group_permissions.trial550 IS 'TRIAL';
          public          postgres    false    205            �            1259    114909    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    204            �            1259    114922    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL,
    name character varying(255) NOT NULL,
    trial553 character(1)
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �           0    0    TABLE auth_permission    COMMENT     4   COMMENT ON TABLE public.auth_permission IS 'TRIAL';
          public          postgres    false    207            �           0    0    COLUMN auth_permission.id    COMMENT     8   COMMENT ON COLUMN public.auth_permission.id IS 'TRIAL';
          public          postgres    false    207            �           0    0 &   COLUMN auth_permission.content_type_id    COMMENT     E   COMMENT ON COLUMN public.auth_permission.content_type_id IS 'TRIAL';
          public          postgres    false    207            �           0    0    COLUMN auth_permission.codename    COMMENT     >   COMMENT ON COLUMN public.auth_permission.codename IS 'TRIAL';
          public          postgres    false    207            �           0    0    COLUMN auth_permission.name    COMMENT     :   COMMENT ON COLUMN public.auth_permission.name IS 'TRIAL';
          public          postgres    false    207            �           0    0    COLUMN auth_permission.trial553    COMMENT     >   COMMENT ON COLUMN public.auth_permission.trial553 IS 'TRIAL';
          public          postgres    false    207            �            1259    114920    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    114932 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    trial553 character(1)
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
          public          postgres    false    209            �           0    0    COLUMN auth_user.trial553    COMMENT     8   COMMENT ON COLUMN public.auth_user.trial553 IS 'TRIAL';
          public          postgres    false    209            �            1259    114943    auth_user_groups    TABLE     �   CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL,
    trial553 character(1)
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �           0    0    TABLE auth_user_groups    COMMENT     5   COMMENT ON TABLE public.auth_user_groups IS 'TRIAL';
          public          postgres    false    211            �           0    0    COLUMN auth_user_groups.id    COMMENT     9   COMMENT ON COLUMN public.auth_user_groups.id IS 'TRIAL';
          public          postgres    false    211            �           0    0    COLUMN auth_user_groups.user_id    COMMENT     >   COMMENT ON COLUMN public.auth_user_groups.user_id IS 'TRIAL';
          public          postgres    false    211            �           0    0     COLUMN auth_user_groups.group_id    COMMENT     ?   COMMENT ON COLUMN public.auth_user_groups.group_id IS 'TRIAL';
          public          postgres    false    211            �           0    0     COLUMN auth_user_groups.trial553    COMMENT     ?   COMMENT ON COLUMN public.auth_user_groups.trial553 IS 'TRIAL';
          public          postgres    false    211            �            1259    114941    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    211            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210            �            1259    114930    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    209            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    208            �            1259    114954    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial553 character(1)
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �           0    0     TABLE auth_user_user_permissions    COMMENT     ?   COMMENT ON TABLE public.auth_user_user_permissions IS 'TRIAL';
          public          postgres    false    213            �           0    0 $   COLUMN auth_user_user_permissions.id    COMMENT     C   COMMENT ON COLUMN public.auth_user_user_permissions.id IS 'TRIAL';
          public          postgres    false    213            �           0    0 )   COLUMN auth_user_user_permissions.user_id    COMMENT     H   COMMENT ON COLUMN public.auth_user_user_permissions.user_id IS 'TRIAL';
          public          postgres    false    213            �           0    0 /   COLUMN auth_user_user_permissions.permission_id    COMMENT     N   COMMENT ON COLUMN public.auth_user_user_permissions.permission_id IS 'TRIAL';
          public          postgres    false    213            �           0    0 *   COLUMN auth_user_user_permissions.trial553    COMMENT     I   COMMENT ON COLUMN public.auth_user_user_permissions.trial553 IS 'TRIAL';
          public          postgres    false    213            �            1259    114952 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    213            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    212            �            1259    114965    catalog_author    TABLE     �   CREATE TABLE public.catalog_author (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    date_of_birth date,
    date_of_death date,
    trial556 character(1)
);
 "   DROP TABLE public.catalog_author;
       public         heap    postgres    false            �           0    0    TABLE catalog_author    COMMENT     3   COMMENT ON TABLE public.catalog_author IS 'TRIAL';
          public          postgres    false    215            �           0    0    COLUMN catalog_author.id    COMMENT     7   COMMENT ON COLUMN public.catalog_author.id IS 'TRIAL';
          public          postgres    false    215            �           0    0     COLUMN catalog_author.first_name    COMMENT     ?   COMMENT ON COLUMN public.catalog_author.first_name IS 'TRIAL';
          public          postgres    false    215            �           0    0    COLUMN catalog_author.last_name    COMMENT     >   COMMENT ON COLUMN public.catalog_author.last_name IS 'TRIAL';
          public          postgres    false    215            �           0    0 #   COLUMN catalog_author.date_of_birth    COMMENT     B   COMMENT ON COLUMN public.catalog_author.date_of_birth IS 'TRIAL';
          public          postgres    false    215                        0    0 #   COLUMN catalog_author.date_of_death    COMMENT     B   COMMENT ON COLUMN public.catalog_author.date_of_death IS 'TRIAL';
          public          postgres    false    215                       0    0    COLUMN catalog_author.trial556    COMMENT     =   COMMENT ON COLUMN public.catalog_author.trial556 IS 'TRIAL';
          public          postgres    false    215            �            1259    114963    catalog_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.catalog_author_id_seq;
       public          postgres    false    215                       0    0    catalog_author_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.catalog_author_id_seq OWNED BY public.catalog_author.id;
          public          postgres    false    214            �            1259    114973    catalog_book    TABLE     �   CREATE TABLE public.catalog_book (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    summary text NOT NULL,
    isbn character varying(13) NOT NULL,
    author_id integer,
    language_id integer,
    trial556 character(1)
);
     DROP TABLE public.catalog_book;
       public         heap    postgres    false                       0    0    TABLE catalog_book    COMMENT     1   COMMENT ON TABLE public.catalog_book IS 'TRIAL';
          public          postgres    false    217                       0    0    COLUMN catalog_book.id    COMMENT     5   COMMENT ON COLUMN public.catalog_book.id IS 'TRIAL';
          public          postgres    false    217                       0    0    COLUMN catalog_book.title    COMMENT     8   COMMENT ON COLUMN public.catalog_book.title IS 'TRIAL';
          public          postgres    false    217                       0    0    COLUMN catalog_book.summary    COMMENT     :   COMMENT ON COLUMN public.catalog_book.summary IS 'TRIAL';
          public          postgres    false    217                       0    0    COLUMN catalog_book.isbn    COMMENT     7   COMMENT ON COLUMN public.catalog_book.isbn IS 'TRIAL';
          public          postgres    false    217                       0    0    COLUMN catalog_book.author_id    COMMENT     <   COMMENT ON COLUMN public.catalog_book.author_id IS 'TRIAL';
          public          postgres    false    217            	           0    0    COLUMN catalog_book.language_id    COMMENT     >   COMMENT ON COLUMN public.catalog_book.language_id IS 'TRIAL';
          public          postgres    false    217            
           0    0    COLUMN catalog_book.trial556    COMMENT     ;   COMMENT ON COLUMN public.catalog_book.trial556 IS 'TRIAL';
          public          postgres    false    217            �            1259    114986    catalog_book_genre    TABLE     �   CREATE TABLE public.catalog_book_genre (
    id integer NOT NULL,
    book_id integer NOT NULL,
    genre_id integer NOT NULL,
    trial556 character(1)
);
 &   DROP TABLE public.catalog_book_genre;
       public         heap    postgres    false                       0    0    TABLE catalog_book_genre    COMMENT     7   COMMENT ON TABLE public.catalog_book_genre IS 'TRIAL';
          public          postgres    false    219                       0    0    COLUMN catalog_book_genre.id    COMMENT     ;   COMMENT ON COLUMN public.catalog_book_genre.id IS 'TRIAL';
          public          postgres    false    219                       0    0 !   COLUMN catalog_book_genre.book_id    COMMENT     @   COMMENT ON COLUMN public.catalog_book_genre.book_id IS 'TRIAL';
          public          postgres    false    219                       0    0 "   COLUMN catalog_book_genre.genre_id    COMMENT     A   COMMENT ON COLUMN public.catalog_book_genre.genre_id IS 'TRIAL';
          public          postgres    false    219                       0    0 "   COLUMN catalog_book_genre.trial556    COMMENT     A   COMMENT ON COLUMN public.catalog_book_genre.trial556 IS 'TRIAL';
          public          postgres    false    219            �            1259    114984    catalog_book_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_book_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.catalog_book_genre_id_seq;
       public          postgres    false    219                       0    0    catalog_book_genre_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.catalog_book_genre_id_seq OWNED BY public.catalog_book_genre.id;
          public          postgres    false    218            �            1259    114971    catalog_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.catalog_book_id_seq;
       public          postgres    false    217                       0    0    catalog_book_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.catalog_book_id_seq OWNED BY public.catalog_book.id;
          public          postgres    false    216            �            1259    114995    catalog_bookinstance    TABLE     �   CREATE TABLE public.catalog_bookinstance (
    id character(32) NOT NULL,
    imprint character varying(200) NOT NULL,
    due_back date,
    status character varying(1) NOT NULL,
    book_id integer,
    borrower_id integer,
    trial556 character(1)
);
 (   DROP TABLE public.catalog_bookinstance;
       public         heap    postgres    false                       0    0    TABLE catalog_bookinstance    COMMENT     9   COMMENT ON TABLE public.catalog_bookinstance IS 'TRIAL';
          public          postgres    false    220                       0    0    COLUMN catalog_bookinstance.id    COMMENT     =   COMMENT ON COLUMN public.catalog_bookinstance.id IS 'TRIAL';
          public          postgres    false    220                       0    0 #   COLUMN catalog_bookinstance.imprint    COMMENT     B   COMMENT ON COLUMN public.catalog_bookinstance.imprint IS 'TRIAL';
          public          postgres    false    220                       0    0 $   COLUMN catalog_bookinstance.due_back    COMMENT     C   COMMENT ON COLUMN public.catalog_bookinstance.due_back IS 'TRIAL';
          public          postgres    false    220                       0    0 "   COLUMN catalog_bookinstance.status    COMMENT     A   COMMENT ON COLUMN public.catalog_bookinstance.status IS 'TRIAL';
          public          postgres    false    220                       0    0 #   COLUMN catalog_bookinstance.book_id    COMMENT     B   COMMENT ON COLUMN public.catalog_bookinstance.book_id IS 'TRIAL';
          public          postgres    false    220                       0    0 '   COLUMN catalog_bookinstance.borrower_id    COMMENT     F   COMMENT ON COLUMN public.catalog_bookinstance.borrower_id IS 'TRIAL';
          public          postgres    false    220                       0    0 $   COLUMN catalog_bookinstance.trial556    COMMENT     C   COMMENT ON COLUMN public.catalog_bookinstance.trial556 IS 'TRIAL';
          public          postgres    false    220            �            1259    115004    catalog_genre    TABLE     �   CREATE TABLE public.catalog_genre (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    trial559 character(1)
);
 !   DROP TABLE public.catalog_genre;
       public         heap    postgres    false                       0    0    TABLE catalog_genre    COMMENT     2   COMMENT ON TABLE public.catalog_genre IS 'TRIAL';
          public          postgres    false    222                       0    0    COLUMN catalog_genre.id    COMMENT     6   COMMENT ON COLUMN public.catalog_genre.id IS 'TRIAL';
          public          postgres    false    222                       0    0    COLUMN catalog_genre.name    COMMENT     8   COMMENT ON COLUMN public.catalog_genre.name IS 'TRIAL';
          public          postgres    false    222                       0    0    COLUMN catalog_genre.trial559    COMMENT     <   COMMENT ON COLUMN public.catalog_genre.trial559 IS 'TRIAL';
          public          postgres    false    222            �            1259    115002    catalog_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.catalog_genre_id_seq;
       public          postgres    false    222                       0    0    catalog_genre_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.catalog_genre_id_seq OWNED BY public.catalog_genre.id;
          public          postgres    false    221            �            1259    115012    catalog_language    TABLE     �   CREATE TABLE public.catalog_language (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    trial559 character(1)
);
 $   DROP TABLE public.catalog_language;
       public         heap    postgres    false                       0    0    TABLE catalog_language    COMMENT     5   COMMENT ON TABLE public.catalog_language IS 'TRIAL';
          public          postgres    false    224                        0    0    COLUMN catalog_language.id    COMMENT     9   COMMENT ON COLUMN public.catalog_language.id IS 'TRIAL';
          public          postgres    false    224            !           0    0    COLUMN catalog_language.name    COMMENT     ;   COMMENT ON COLUMN public.catalog_language.name IS 'TRIAL';
          public          postgres    false    224            "           0    0     COLUMN catalog_language.trial559    COMMENT     ?   COMMENT ON COLUMN public.catalog_language.trial559 IS 'TRIAL';
          public          postgres    false    224            �            1259    115010    catalog_language_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catalog_language_id_seq;
       public          postgres    false    224            #           0    0    catalog_language_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.catalog_language_id_seq OWNED BY public.catalog_language.id;
          public          postgres    false    223            �            1259    115020    django_admin_log    TABLE     X  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp without time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    action_flag smallint NOT NULL,
    trial559 character(1)
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            $           0    0    TABLE django_admin_log    COMMENT     5   COMMENT ON TABLE public.django_admin_log IS 'TRIAL';
          public          postgres    false    226            %           0    0    COLUMN django_admin_log.id    COMMENT     9   COMMENT ON COLUMN public.django_admin_log.id IS 'TRIAL';
          public          postgres    false    226            &           0    0 #   COLUMN django_admin_log.action_time    COMMENT     B   COMMENT ON COLUMN public.django_admin_log.action_time IS 'TRIAL';
          public          postgres    false    226            '           0    0 !   COLUMN django_admin_log.object_id    COMMENT     @   COMMENT ON COLUMN public.django_admin_log.object_id IS 'TRIAL';
          public          postgres    false    226            (           0    0 #   COLUMN django_admin_log.object_repr    COMMENT     B   COMMENT ON COLUMN public.django_admin_log.object_repr IS 'TRIAL';
          public          postgres    false    226            )           0    0 &   COLUMN django_admin_log.change_message    COMMENT     E   COMMENT ON COLUMN public.django_admin_log.change_message IS 'TRIAL';
          public          postgres    false    226            *           0    0 '   COLUMN django_admin_log.content_type_id    COMMENT     F   COMMENT ON COLUMN public.django_admin_log.content_type_id IS 'TRIAL';
          public          postgres    false    226            +           0    0    COLUMN django_admin_log.user_id    COMMENT     >   COMMENT ON COLUMN public.django_admin_log.user_id IS 'TRIAL';
          public          postgres    false    226            ,           0    0 #   COLUMN django_admin_log.action_flag    COMMENT     B   COMMENT ON COLUMN public.django_admin_log.action_flag IS 'TRIAL';
          public          postgres    false    226            -           0    0     COLUMN django_admin_log.trial559    COMMENT     ?   COMMENT ON COLUMN public.django_admin_log.trial559 IS 'TRIAL';
          public          postgres    false    226            �            1259    115018    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            .           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    115033    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    trial559 character(1)
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            /           0    0    TABLE django_content_type    COMMENT     8   COMMENT ON TABLE public.django_content_type IS 'TRIAL';
          public          postgres    false    228            0           0    0    COLUMN django_content_type.id    COMMENT     <   COMMENT ON COLUMN public.django_content_type.id IS 'TRIAL';
          public          postgres    false    228            1           0    0 $   COLUMN django_content_type.app_label    COMMENT     C   COMMENT ON COLUMN public.django_content_type.app_label IS 'TRIAL';
          public          postgres    false    228            2           0    0     COLUMN django_content_type.model    COMMENT     ?   COMMENT ON COLUMN public.django_content_type.model IS 'TRIAL';
          public          postgres    false    228            3           0    0 #   COLUMN django_content_type.trial559    COMMENT     B   COMMENT ON COLUMN public.django_content_type.trial559 IS 'TRIAL';
          public          postgres    false    228            �            1259    115031    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    228            4           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    227            �            1259    115042    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp without time zone NOT NULL,
    trial559 character(1)
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            5           0    0    TABLE django_migrations    COMMENT     6   COMMENT ON TABLE public.django_migrations IS 'TRIAL';
          public          postgres    false    230            6           0    0    COLUMN django_migrations.id    COMMENT     :   COMMENT ON COLUMN public.django_migrations.id IS 'TRIAL';
          public          postgres    false    230            7           0    0    COLUMN django_migrations.app    COMMENT     ;   COMMENT ON COLUMN public.django_migrations.app IS 'TRIAL';
          public          postgres    false    230            8           0    0    COLUMN django_migrations.name    COMMENT     <   COMMENT ON COLUMN public.django_migrations.name IS 'TRIAL';
          public          postgres    false    230            9           0    0     COLUMN django_migrations.applied    COMMENT     ?   COMMENT ON COLUMN public.django_migrations.applied IS 'TRIAL';
          public          postgres    false    230            :           0    0 !   COLUMN django_migrations.trial559    COMMENT     @   COMMENT ON COLUMN public.django_migrations.trial559 IS 'TRIAL';
          public          postgres    false    230            �            1259    115040    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    230            ;           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    229            �            1259    115051    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp without time zone NOT NULL,
    trial559 character(1)
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            <           0    0    TABLE django_session    COMMENT     3   COMMENT ON TABLE public.django_session IS 'TRIAL';
          public          postgres    false    231            =           0    0 !   COLUMN django_session.session_key    COMMENT     @   COMMENT ON COLUMN public.django_session.session_key IS 'TRIAL';
          public          postgres    false    231            >           0    0 "   COLUMN django_session.session_data    COMMENT     A   COMMENT ON COLUMN public.django_session.session_data IS 'TRIAL';
          public          postgres    false    231            ?           0    0 !   COLUMN django_session.expire_date    COMMENT     @   COMMENT ON COLUMN public.django_session.expire_date IS 'TRIAL';
          public          postgres    false    231            @           0    0    COLUMN django_session.trial559    COMMENT     =   COMMENT ON COLUMN public.django_session.trial559 IS 'TRIAL';
          public          postgres    false    231            �            1259    115060    sqlite_sequence    TABLE     `   CREATE TABLE public.sqlite_sequence (
    name text,
    seq text,
    trial563 character(1)
);
 #   DROP TABLE public.sqlite_sequence;
       public         heap    postgres    false            A           0    0    TABLE sqlite_sequence    COMMENT     4   COMMENT ON TABLE public.sqlite_sequence IS 'TRIAL';
          public          postgres    false    232            B           0    0    COLUMN sqlite_sequence.name    COMMENT     :   COMMENT ON COLUMN public.sqlite_sequence.name IS 'TRIAL';
          public          postgres    false    232            C           0    0    COLUMN sqlite_sequence.seq    COMMENT     9   COMMENT ON COLUMN public.sqlite_sequence.seq IS 'TRIAL';
          public          postgres    false    232            D           0    0    COLUMN sqlite_sequence.trial563    COMMENT     >   COMMENT ON COLUMN public.sqlite_sequence.trial563 IS 'TRIAL';
          public          postgres    false    232            �
           2604    114906    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    114914    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    114925    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    114935    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    114946    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    114957    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    114968    catalog_author id    DEFAULT     v   ALTER TABLE ONLY public.catalog_author ALTER COLUMN id SET DEFAULT nextval('public.catalog_author_id_seq'::regclass);
 @   ALTER TABLE public.catalog_author ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    114976    catalog_book id    DEFAULT     r   ALTER TABLE ONLY public.catalog_book ALTER COLUMN id SET DEFAULT nextval('public.catalog_book_id_seq'::regclass);
 >   ALTER TABLE public.catalog_book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    114989    catalog_book_genre id    DEFAULT     ~   ALTER TABLE ONLY public.catalog_book_genre ALTER COLUMN id SET DEFAULT nextval('public.catalog_book_genre_id_seq'::regclass);
 D   ALTER TABLE public.catalog_book_genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    115007    catalog_genre id    DEFAULT     t   ALTER TABLE ONLY public.catalog_genre ALTER COLUMN id SET DEFAULT nextval('public.catalog_genre_id_seq'::regclass);
 ?   ALTER TABLE public.catalog_genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �
           2604    115015    catalog_language id    DEFAULT     z   ALTER TABLE ONLY public.catalog_language ALTER COLUMN id SET DEFAULT nextval('public.catalog_language_id_seq'::regclass);
 B   ALTER TABLE public.catalog_language ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �
           2604    115023    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �
           2604    115036    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �
           2604    115045    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �          0    114903 
   auth_group 
   TABLE DATA           8   COPY public.auth_group (id, name, trial550) FROM stdin;
    public          postgres    false    203   j      �          0    114911    auth_group_permissions 
   TABLE DATA           W   COPY public.auth_group_permissions (id, group_id, permission_id, trial550) FROM stdin;
    public          postgres    false    205   �      �          0    114922    auth_permission 
   TABLE DATA           X   COPY public.auth_permission (id, content_type_id, codename, name, trial553) FROM stdin;
    public          postgres    false    207   �      �          0    114932 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name, trial553) FROM stdin;
    public          postgres    false    209   �      �          0    114943    auth_user_groups 
   TABLE DATA           K   COPY public.auth_user_groups (id, user_id, group_id, trial553) FROM stdin;
    public          postgres    false    211   �      �          0    114954    auth_user_user_permissions 
   TABLE DATA           Z   COPY public.auth_user_user_permissions (id, user_id, permission_id, trial553) FROM stdin;
    public          postgres    false    213   �      �          0    114965    catalog_author 
   TABLE DATA           k   COPY public.catalog_author (id, first_name, last_name, date_of_birth, date_of_death, trial556) FROM stdin;
    public          postgres    false    215         �          0    114973    catalog_book 
   TABLE DATA           b   COPY public.catalog_book (id, title, summary, isbn, author_id, language_id, trial556) FROM stdin;
    public          postgres    false    217   �      �          0    114986    catalog_book_genre 
   TABLE DATA           M   COPY public.catalog_book_genre (id, book_id, genre_id, trial556) FROM stdin;
    public          postgres    false    219   ]      �          0    114995    catalog_bookinstance 
   TABLE DATA           m   COPY public.catalog_bookinstance (id, imprint, due_back, status, book_id, borrower_id, trial556) FROM stdin;
    public          postgres    false    220   �      �          0    115004    catalog_genre 
   TABLE DATA           ;   COPY public.catalog_genre (id, name, trial559) FROM stdin;
    public          postgres    false    222   H      �          0    115012    catalog_language 
   TABLE DATA           >   COPY public.catalog_language (id, name, trial559) FROM stdin;
    public          postgres    false    224   �      �          0    115020    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag, trial559) FROM stdin;
    public          postgres    false    226   �      �          0    115033    django_content_type 
   TABLE DATA           M   COPY public.django_content_type (id, app_label, model, trial559) FROM stdin;
    public          postgres    false    228   �      �          0    115042    django_migrations 
   TABLE DATA           M   COPY public.django_migrations (id, app, name, applied, trial559) FROM stdin;
    public          postgres    false    230   9      �          0    115051    django_session 
   TABLE DATA           Z   COPY public.django_session (session_key, session_data, expire_date, trial559) FROM stdin;
    public          postgres    false    231   ^      �          0    115060    sqlite_sequence 
   TABLE DATA           >   COPY public.sqlite_sequence (name, seq, trial563) FROM stdin;
    public          postgres    false    232   �      E           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    202            F           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 73, true);
          public          postgres    false    204            G           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 45, true);
          public          postgres    false    206            H           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);
          public          postgres    false    210            I           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          postgres    false    208            J           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 71, true);
          public          postgres    false    212            K           0    0    catalog_author_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.catalog_author_id_seq', 3, true);
          public          postgres    false    214            L           0    0    catalog_book_genre_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.catalog_book_genre_id_seq', 5, true);
          public          postgres    false    218            M           0    0    catalog_book_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.catalog_book_id_seq', 4, true);
          public          postgres    false    216            N           0    0    catalog_genre_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.catalog_genre_id_seq', 3, true);
          public          postgres    false    221            O           0    0    catalog_language_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.catalog_language_id_seq', 1, false);
          public          postgres    false    223            P           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 30, true);
          public          postgres    false    225            Q           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    227            R           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);
          public          postgres    false    229            �
           2606    114916 0   auth_group_permissions auth_group_permissions_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pk PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pk;
       public            postgres    false    205            �
           2606    114927 "   auth_permission auth_permission_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pk;
       public            postgres    false    207            �
           2606    114948 $   auth_user_groups auth_user_groups_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pk;
       public            postgres    false    211                        2606    114959 8   auth_user_user_permissions auth_user_user_permissions_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pk PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pk;
       public            postgres    false    213                       2606    114970     catalog_author catalog_author_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.catalog_author
    ADD CONSTRAINT catalog_author_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.catalog_author DROP CONSTRAINT catalog_author_pk;
       public            postgres    false    215                       2606    114991 (   catalog_book_genre catalog_book_genre_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT catalog_book_genre_pk PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.catalog_book_genre DROP CONSTRAINT catalog_book_genre_pk;
       public            postgres    false    219                       2606    114981    catalog_book catalog_book_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT catalog_book_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.catalog_book DROP CONSTRAINT catalog_book_pk;
       public            postgres    false    217                       2606    115009    catalog_genre catalog_genre_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.catalog_genre
    ADD CONSTRAINT catalog_genre_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.catalog_genre DROP CONSTRAINT catalog_genre_pk;
       public            postgres    false    222                       2606    115017 $   catalog_language catalog_language_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.catalog_language
    ADD CONSTRAINT catalog_language_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.catalog_language DROP CONSTRAINT catalog_language_pk;
       public            postgres    false    224                       2606    115028 $   django_admin_log django_admin_log_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pk;
       public            postgres    false    226                       2606    115038 *   django_content_type django_content_type_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pk PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pk;
       public            postgres    false    228                       2606    115050 &   django_migrations django_migrations_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pk PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pk;
       public            postgres    false    230            �
           2606    114908    auth_group idx_1dd9f96b968e961b 
   CONSTRAINT     c   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT idx_1dd9f96b968e961b PRIMARY KEY (name, id);
 I   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT idx_1dd9f96b968e961b;
       public            postgres    false    203    203            "           2606    115058 #   django_session idx_ae7220b77ed1bf20 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT idx_ae7220b77ed1bf20 PRIMARY KEY (session_key);
 M   ALTER TABLE ONLY public.django_session DROP CONSTRAINT idx_ae7220b77ed1bf20;
       public            postgres    false    231            �
           2606    114940    auth_user idx_af3c9c759ecd0729 
   CONSTRAINT     f   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT idx_af3c9c759ecd0729 PRIMARY KEY (username, id);
 H   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT idx_af3c9c759ecd0729;
       public            postgres    false    209    209                       2606    114999 )   catalog_bookinstance idx_e756a16a622d655a 
   CONSTRAINT     g   ALTER TABLE ONLY public.catalog_bookinstance
    ADD CONSTRAINT idx_e756a16a622d655a PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.catalog_bookinstance DROP CONSTRAINT idx_e756a16a622d655a;
       public            postgres    false    220                       1259    114983    idx_238d42c8c2f762d7    INDEX     R   CREATE INDEX idx_238d42c8c2f762d7 ON public.catalog_book USING btree (author_id);
 (   DROP INDEX public.idx_238d42c8c2f762d7;
       public            postgres    false    217                       1259    114961    idx_24e04f2c19ffb8e2    INDEX     ^   CREATE INDEX idx_24e04f2c19ffb8e2 ON public.auth_user_user_permissions USING btree (user_id);
 (   DROP INDEX public.idx_24e04f2c19ffb8e2;
       public            postgres    false    213            �
           1259    114950    idx_2d2091cde2d24695    INDEX     T   CREATE INDEX idx_2d2091cde2d24695 ON public.auth_user_groups USING btree (user_id);
 (   DROP INDEX public.idx_2d2091cde2d24695;
       public            postgres    false    211                       1259    114960    idx_4170e6da639581f0    INDEX     d   CREATE INDEX idx_4170e6da639581f0 ON public.auth_user_user_permissions USING btree (permission_id);
 (   DROP INDEX public.idx_4170e6da639581f0;
       public            postgres    false    213            	           1259    114982    idx_464311ea08e5a68a    INDEX     T   CREATE INDEX idx_464311ea08e5a68a ON public.catalog_book USING btree (language_id);
 (   DROP INDEX public.idx_464311ea08e5a68a;
       public            postgres    false    217                       1259    115000    idx_56a6c7a83f5513ba    INDEX     \   CREATE INDEX idx_56a6c7a83f5513ba ON public.catalog_bookinstance USING btree (borrower_id);
 (   DROP INDEX public.idx_56a6c7a83f5513ba;
       public            postgres    false    220                       1259    114993    idx_57a3701da5eaef5f    INDEX     V   CREATE INDEX idx_57a3701da5eaef5f ON public.catalog_book_genre USING btree (book_id);
 (   DROP INDEX public.idx_57a3701da5eaef5f;
       public            postgres    false    219                       1259    115001    idx_5971eb4b9c964526    INDEX     X   CREATE INDEX idx_5971eb4b9c964526 ON public.catalog_bookinstance USING btree (book_id);
 (   DROP INDEX public.idx_5971eb4b9c964526;
       public            postgres    false    220                       1259    114962    idx_660cb561f1e5091e    INDEX     t   CREATE UNIQUE INDEX idx_660cb561f1e5091e ON public.auth_user_user_permissions USING btree (user_id, permission_id);
 (   DROP INDEX public.idx_660cb561f1e5091e;
       public            postgres    false    213    213            �
           1259    114919    idx_727914ba6a611113    INDEX     q   CREATE UNIQUE INDEX idx_727914ba6a611113 ON public.auth_group_permissions USING btree (group_id, permission_id);
 (   DROP INDEX public.idx_727914ba6a611113;
       public            postgres    false    205    205            �
           1259    114928    idx_7e2eb30aa3aca7bf    INDEX     [   CREATE INDEX idx_7e2eb30aa3aca7bf ON public.auth_permission USING btree (content_type_id);
 (   DROP INDEX public.idx_7e2eb30aa3aca7bf;
       public            postgres    false    207            �
           1259    114949    idx_834491cf1dc64ff7    INDEX     U   CREATE INDEX idx_834491cf1dc64ff7 ON public.auth_user_groups USING btree (group_id);
 (   DROP INDEX public.idx_834491cf1dc64ff7;
       public            postgres    false    211            �
           1259    114917    idx_8451037943251584    INDEX     `   CREATE INDEX idx_8451037943251584 ON public.auth_group_permissions USING btree (permission_id);
 (   DROP INDEX public.idx_8451037943251584;
       public            postgres    false    205                       1259    115039    idx_84f63b87b8d8b29c    INDEX     g   CREATE UNIQUE INDEX idx_84f63b87b8d8b29c ON public.django_content_type USING btree (app_label, model);
 (   DROP INDEX public.idx_84f63b87b8d8b29c;
       public            postgres    false    228    228                        1259    115059    idx_87c4f8d449ff6a92    INDEX     V   CREATE INDEX idx_87c4f8d449ff6a92 ON public.django_session USING btree (expire_date);
 (   DROP INDEX public.idx_87c4f8d449ff6a92;
       public            postgres    false    231            �
           1259    114951    idx_a8609f37aa4f1d37    INDEX     e   CREATE UNIQUE INDEX idx_a8609f37aa4f1d37 ON public.auth_user_groups USING btree (user_id, group_id);
 (   DROP INDEX public.idx_a8609f37aa4f1d37;
       public            postgres    false    211    211            �
           1259    114929    idx_ab4d8dd74b542ea2    INDEX     l   CREATE UNIQUE INDEX idx_ab4d8dd74b542ea2 ON public.auth_permission USING btree (content_type_id, codename);
 (   DROP INDEX public.idx_ab4d8dd74b542ea2;
       public            postgres    false    207    207                       1259    115030    idx_af7087131bf127b1    INDEX     \   CREATE INDEX idx_af7087131bf127b1 ON public.django_admin_log USING btree (content_type_id);
 (   DROP INDEX public.idx_af7087131bf127b1;
       public            postgres    false    226                       1259    114992    idx_b440397c634b156f    INDEX     W   CREATE INDEX idx_b440397c634b156f ON public.catalog_book_genre USING btree (genre_id);
 (   DROP INDEX public.idx_b440397c634b156f;
       public            postgres    false    219                       1259    115029    idx_c5e70d62067adbde    INDEX     T   CREATE INDEX idx_c5e70d62067adbde ON public.django_admin_log USING btree (user_id);
 (   DROP INDEX public.idx_c5e70d62067adbde;
       public            postgres    false    226                       1259    114994    idx_d0a8407c86079038    INDEX     g   CREATE UNIQUE INDEX idx_d0a8407c86079038 ON public.catalog_book_genre USING btree (book_id, genre_id);
 (   DROP INDEX public.idx_d0a8407c86079038;
       public            postgres    false    219    219            �
           1259    114918    idx_ef9915b197a0b14b    INDEX     [   CREATE INDEX idx_ef9915b197a0b14b ON public.auth_group_permissions USING btree (group_id);
 (   DROP INDEX public.idx_ef9915b197a0b14b;
       public            postgres    false    205            %           2606    115076 .   auth_user_user_permissions fk_06a819439bc5efab    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT fk_06a819439bc5efab FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);
 X   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT fk_06a819439bc5efab;
       public          postgres    false    2805    207    213            &           2606    115081     catalog_book fk_288936e207de7136    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT fk_288936e207de7136 FOREIGN KEY (language_id) REFERENCES public.catalog_language(id);
 J   ALTER TABLE ONLY public.catalog_book DROP CONSTRAINT fk_288936e207de7136;
       public          postgres    false    217    224    2838            $           2606    115071 #   auth_permission fk_29a146382708fca3    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT fk_29a146382708fca3 FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);
 M   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT fk_29a146382708fca3;
       public          postgres    false    2844    228    207            *           2606    115101 (   catalog_bookinstance fk_65502e5c6eba3383    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_bookinstance
    ADD CONSTRAINT fk_65502e5c6eba3383 FOREIGN KEY (book_id) REFERENCES public.catalog_book(id);
 R   ALTER TABLE ONLY public.catalog_bookinstance DROP CONSTRAINT fk_65502e5c6eba3383;
       public          postgres    false    2823    217    220            '           2606    115086     catalog_book fk_661f5ff65b7152f9    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT fk_661f5ff65b7152f9 FOREIGN KEY (author_id) REFERENCES public.catalog_author(id);
 J   ALTER TABLE ONLY public.catalog_book DROP CONSTRAINT fk_661f5ff65b7152f9;
       public          postgres    false    2821    217    215            #           2606    115066 *   auth_group_permissions fk_70118ddb2675a35c    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT fk_70118ddb2675a35c FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);
 T   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT fk_70118ddb2675a35c;
       public          postgres    false    205    2805    207            (           2606    115091 &   catalog_book_genre fk_839a6f1e4ed2b18b    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT fk_839a6f1e4ed2b18b FOREIGN KEY (genre_id) REFERENCES public.catalog_genre(id);
 P   ALTER TABLE ONLY public.catalog_book_genre DROP CONSTRAINT fk_839a6f1e4ed2b18b;
       public          postgres    false    2836    219    222            )           2606    115096 &   catalog_book_genre fk_a0a46a6633c64a37    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT fk_a0a46a6633c64a37 FOREIGN KEY (book_id) REFERENCES public.catalog_book(id);
 P   ALTER TABLE ONLY public.catalog_book_genre DROP CONSTRAINT fk_a0a46a6633c64a37;
       public          postgres    false    2823    219    217            +           2606    115106 $   django_admin_log fk_defcb2f7015257d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT fk_defcb2f7015257d9 FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);
 N   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT fk_defcb2f7015257d9;
       public          postgres    false    228    2844    226            �   5   x�3���L*J,�L�+���2��,�,�/q�9Sr3�2�K��B1z\\\ �-�      �     x�-��m1��n0�r>�6	G����T�Oj �Һ��������3�f|=c%k��uX:�a������0ux-櫉�&J,M�M����B��
Y,�-��h!-�BZ���@Ki���-�ZJ������@Ki���-�%ZI�+�X5K�\ȷ�=������m����,��3KJ�q	��f!%DJ�,1�T��V�X��Z�\��\�\��\��\��$�ќ�ќ�ќ�ќ�ќk�9�Fs���\͹6�sm=���hεќk�9�Fs���\͹�sb����}�����      �      x�]�Mn�0��5u
�����u�P/�M8F��O�ܾ����K�	� Y��L���k~X�-?�mr%%��\���1��M��%���/�e��ڂ�}�)<&	�LM�/�|?��9;iT�K��qdF93�4wf�K=BSjf)6�g�P�c������KQ�p̑Qp��
��"�,A5%EB5�Rɾ�EB��-�C�9#��+�pD =5��p<��
n�����~^VBxV�v�堜sW�q�����m�'lPn�:ו�~��?]��A8Z+V��V�S��5�<�:3Pٴos���'@�]�pVdW)�Q��`Ԥ%Er6#�����n��Fι%�
�K�pG 5U��pܘ�<ݺM�f��R��-�JJTZ��aG5&;�5��#�Ɇ�'~8�&w�����b�}q�n~���i-e=�'t�X������|���FH�mX��C��FT�n����1��	�?%����A2�j��[�l{��he����DK��D��WQ��\G+      �   �  x�m�_o�0 �g�)�����>'Nbi����@
ZTir(!	8	P>�B�v���;�N�	��k��H��b��(5�Ƒ0;yc%O<V�ݨ^��|n�#'wgV��'o���P����/C����6�n�s�*��U�\�M��uZf��&q�����P�}���uCN,NL�*Zo���Zp|Z�����4=W�?n�=I���^����.z�	��6y<��=���th~�׈
5����X˪F�I�&��݋���J�CqZw�r�8���[�F0�g�� �٪z6���ٍ�Y�<���p�B5N�y�� 3v��,���N�֢��G��z�"�X�v��V�d6��>)�D$��{���;��[{s�w��n�{�g$zt�aŇ�jc�2�kLlR�h4NH!c�E�#����"?��XWMg�B��j�~���      �      x�3�4�4���2�42��=... *q      �     x�5��q1Cѳ���)R\��T���?�_p��AB���^��k�ޤ$}H5i�H��&m�MJқT���El� J	�-&p�� JA���*EV�
�h)m������ZJ�h)m�����1U���{���D?�T��S5�[LU~�y����h,�����ə��cĒ3%c��t���>���/N]B�J�)��S8!��BR!����Ѕ��S�gk4�}t'i�s4��A��̓4~��T̓7�o4�h^����̓7�o4��h��<x�y��{�LTҾ?�u�b}�      �   �   x�3��vaӅ�^�ua�%�CS3]]#sNCKC �T�Ȃ3Əˈ�+?#�3$?';35���H��P�����X��R���Θ�=+5=�8#9��)+5Ĩ٩e�@ACKc�NC# ��B����3F��� ��1�      �   �  x�mTMsE=˿�o\v��>��)B�a�ISY�(���d;�P�!��T(�k�J[a�/�Kx�#�J�l�wgz��{�zV+�ė�G����Ga�/�^ح�c�y�'U�_�1��y~�a'�S��o=�3����//W�<{87D�.6g�<�'�K?����_�c��%���RL%�9��)����~�p�@�+.�@��ď�Sbu�ŉ��ȿ欼���'ᐤ�>�"�����j�'���(�+��%��?'�/�!=Ƨ�4��~gLa�J9)��"D�#!:��u�N��`�A�4��?�#b��"��`ȜD�z�*�k���������j���]Y�m�$�$A1��!�(���b���\�C �3�u�$��x�,)n���� ȼ>����LVϫӇ�н?�(����=)�\cc�}�c@1D���u&hw�foȶ�J��s>A�Wt��[O��G�V��T��B���������@^�%ϥ�c.���1{>~r�hۡX�d�E�_���[�o�w1XN���`*0�_�m�0��0<�sɔ�I\ ���Axl����.������%s�QJ�71�)��r;��}9�� Ì��@�u��vP�ǻ���8E�UT"��������h|>$}��;�����il�<u�7H)Ç���G	�.I;����$��zbW�S�u��3b����RX�(�0�&Gx�HA��������l̍zݘ���/Q|y�nr*�0��J/�,�H>ǋ��l�������6e�Fh��%{���8��`�t�lmnܽ�vnW�ii��no�B^�º>��
���dT`�a]�l�TF�cr[7	=�꼨b�Nm���T��.Ǚ��z7Ѥ(���4�8����d���l7k�ƦO��>ʩ�mөN�_�{&ݶ�T&ˑ+�=J�3�r|�O��_�Ķ;��Y�#����M�}RI�;�ɚ¡nr�;�Bm��t����$Uj�~<���t����Sn�:�:-(�E���}���=S�
m�Q��\��FE�KZ��qIj�ꇅ��TQ�B��y���6:�R��Q���ŁPթDt�Js�rj�i�R�ݍ�N��m��#�5�P2�Y#5I�	�7����������/��/�~���f���3��;��b(Q,��qm�	 մ�ak���=��)H�U�S߃���w���$���u9�Uap�^�x���1=�=>��^7-�q���U�@znS��e���-%�J�NL��B;�V�O�F���&ˤܼu�ZƱը%CC)��lA�,5O"�ϲfj��u1}vS�F+r*k��*q6�߫;�4���i�������r��6[���Ѱ�k�T�llߗ�;g�u[E[�Uz�`1����1Y�rgs}����l��_��qmee�_lQ�R      �   %   x�3�4�4���2�4�0L8AL Ô����� ��G      �   �  x�͒Mk�1���O�/�K^�$=z�*�����.�>�[EoU^
E(����v�Kmׯ0�FN�<zTa����?3q�J�Ub�����L�]0Ym^�\�a]�`�G��wp	�z������z8n����c�&������eP����-���S�(|��pр��R�1|�#�	6fݘ��k�?��f-d�FDeu�2%\�k��������� �)U�;���V	��V)i�I�:�y&p:`���z6H�b��)|�Kt��G�����[jr<����>+[D��1;c,묒���ǁ	"�`��NFvQ�(��ˌie�8�;���ѻ���h���R���4=��&���&%y��D��g/�b9;|M.�rٺ�A��̆��p���������&���ޛ<���2T�n�4��F��P�}I      �   @   x�3�N�L�KNUp�L.������2�tK�+I,�q�9=2�K�2�s���Rs@�1z\\\ Qc      �      x������ � �      �   �  x��W݊�F��>��MZX��w�G�\t�Jwۛl(#i��ƶ��-�Hҟ�J��/���m�����z���ɦ���H#i�9�;g�s��0��	�J�H@Ɯ2�������������n8�vv֎�{�6�]>H��O��(�oiptw��x**ք	
�у�MvÏʓ���p��f1I~q�!H�½"��:���>M�%WZQ4g�N��~�y>��g,�j��)�iY����K7�$} H��-Ϳ�^4���i8�q�r~�|�<��vÕ�`b�oiY>�I=���`7��.�����N��j~�d~�����vOa��nĻ�LO��EFT����}���AR·a�'&���#�I	M�Ȩ!�d��P�>����ϐL@ǔ3#�kR��rr���>�%��w�S,C6 �R�I$�q,�@��%�eC�l脪XJ���Fvb'�>���5���v����1�"�`^ƌH�� �K��y6�w�Y�76?7?5ϛ�g�o'=4�ͺ-ޥ���,�����E,�]��/��5�%���6ʴ`� �Hk!"��ʭ6�R��].�I�pk�E	
����UaוJ,!�� 1���RՃ�㽢���y$z߮>�b�ҕ�������6�񧵫�u��Z/F�q1�G\$�e^��_N���x��_�꫻���lå�+�߂���ʯhW1�F����Q�Ūv���_A�j}�����k��_���bbm�mv}V���- ��
�5��`��O���7 ��ԗ, 	�Xj	�͉[���`���v[}QB.b����W�z�*O^����߲��+���WF{���oa	��
�����Բ/��'.�S�i1,[�n5$�b���Zo��q*
?H�l��V��l�.���+�98�m��ϊ���l1L,F����U��p�������/��cB��ڕ��^Z/�CF75���n�ZY�ۡ!�R��(˜QJ�{������a#/b
�぀����T]N]�"��-S���=���3�3lp! 4�n��]�)�Ҝ�n�^�����Љ�ʔ~#^�P�:C�M�9w��02�L�&Ʋ�4��m��<�.kf��㧌���-��Q·U��Vp�a��oX�c�_�󋂤Q���݇�xT�hE�u�J��:������U�wn:������|o�U�l���A�C��%�❝�����      �   �   x�U�M!�u9����K7	gZBa1��0���kx�>�H0q�T�7�����9�D&��j!sMk�⳦#8���˒��]�@|o��x��f��Vr�`~+\� �$��vl�Ϲ�4!����}c�� ��H�      �     x���Mr�0���)z�p��9G���0��h�W����GfbN��6��><��ٍ���r>6�FJ	�ڥ��%���������B�V���[����|p������ $) ̈́����UN�05�����1���*��{mYB_%�*�X����𻋇�{�߾&�Q�\��q
�k��t��7U%G�$�����-���Է��It��k�����B!�Uֱ�[��t�������p�E~Q�H��b��Rs���@� r�ХD�%���N]��(�'IYVþ�=��jlv<$ê^z��L�K/�k�q�97���q
}3��P�7	��z��hUsUc�4���R�P�����;JNIr�ߜËȋ�aO�o�(!�C�IŬ*NG��	�i|=9�y�)#mv�nvq���{�x��;�WB�6�(�H�@I���in��<��(��wʸ�P>/xu��ҥ��.��P�����x2�4$K���ʳ�$3O%oox����\�0T%�>�j�<]>�����{�?�0/q�5a>�}��U!tg��)�R�?�k��+m��E��q�KH�i�Eo ?]e?� �C���S{\��M��2��1�&���
P�t
$��U5�^9�9?Q�ZT�>��p�Uy�,��@������+��aL�Ae>��~'޳U��U��2�����F�sy�PH��{y��k����9��e��"�`��Δ
����2�x��޵�kS�1*�$*��ם�8�.��Z�G9�R��fn.��&v�N�����n�����      �     x��˒�8���)�BI��U���c*��`��cc[��[O?�,�L�{;�I�Cq��w��J��)��Jm=�U�=�������lēY��fid�`^I5�닊���a�tjxRb�7����''7j�*�,�km�f�ߦ�:��.�����pV�|��]��"���&R�Z��*���g�_�òߦ�Ml�h��~�ܮ�<#�6��+A�m���O���s3�Ⱥߐ�ڑr8�r�W<��2\tP�%�V�'ѝ�V�p�#0O���L�UE�ǈ �>"�#"O؛ {b�c�¶KG_����=�XP�7��D{/;�vg!��i�݈�\�`g�4"��[��5K���bA�0`Ƀ��:"B�{
����찾n,yڑ���a��xb{b�1v������֦��w+�qQ��x=�E��m��T*����8 ��R�7,��Ћ���_n�;W��ϳ��y��PW'������A�oD:��aw�W}�a�(��œ[?����7!t����|�u�wk[���F��E����gr��+ѭ{�^G"){�'�A���!�Y��q(� K-��j��*q�&N��/�D��xb�܉E&��>��C�^mHq�������Ǔ"ۦ�U���':bz޲<0�5ӃF�η��P���p���E/�e%����57�SS��}���S�'�c5���g��?���{��sb�m{>��]����sp̍��Һ�s������Г�8#�W�М@2�5׭�<4N�R�V<S�e#�ɼ�O��v!���p�+�@�zes�R��L�`���b�?�.l�J`8�~b�O,wl��KZ,�Ks>���t^o2�(`�����շ�
^	삵�����1�����Y;x�T�
�l+�DH$S��w١_�;���f��%�U���C��y�VbО^�nZ����ś�����\=|1�/7u�]�]���E�}oא�[S�������Ya��Z�2%�7�3�G3oo����9�ޛ�_�v�^�q��,7��Vi�!3���A�s�cs�S�D��C��?��?"<�}@:�]�v��^C�q�Gg���G�J��^O���-�	-(S���A밟w�G-1�K�J͒<1o`���@�x����Zj��z�5r����G
���6G�~9��>�Ey�����ƾ��LJ&���a�YٗǮ7W�&�Y�/��dEU铺6#a���q|h������|hl�[�j�<C�e��s'�Ԓo�d�&���+��9�� 3B��t@�+��,�h��r���Z��Ɠ�'�� A�a�Qw��e��Ç� ��`�      �   �   x���K� �5=�)����\6!�����Xx{�aL\7M��N��K2\Q3H�QuD�_b�O� �䨌a'�a����5�5W235Z�;P}��L����J�ٗ5�]K.R�A�
D�{�R�R���8�[��d�!]͡hWo�I�f'Y⎔_��&�>�ˬCy��Wg�f�	�����z���pS�'z4j0�fO�	���}��vW�r�H     