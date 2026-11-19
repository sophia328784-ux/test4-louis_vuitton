.class final Lcom/google/android/gms/internal/clearcut/zzdd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzeg;


# static fields
.field public static final b:Lcom/google/android/gms/internal/clearcut/zzde;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/zzdf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzde;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzdd;->b:Lcom/google/android/gms/internal/clearcut/zzde;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzdf;

    :try_start_0
    const-string v1, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzdn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzdd;->b:Lcom/google/android/gms/internal/clearcut/zzde;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/clearcut/zzdn;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzcf;->a:Lcom/google/android/gms/internal/clearcut/zzcf;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzdf;->a:[Lcom/google/android/gms/internal/clearcut/zzdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdd;->a:Lcom/google/android/gms/internal/clearcut/zzdf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzeh;->a:Ljava/lang/Class;

    const-class v0, Lcom/google/android/gms/internal/clearcut/zzcg;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzeh;->a:Ljava/lang/Class;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzdd;->a:Lcom/google/android/gms/internal/clearcut/zzdf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzdf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzdm;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/zzdm;->b()Z

    move-result p0

    const-string v1, "Protobuf runtime is not correctly loaded."

    if-eqz p0, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzeh;->d:Lcom/google/android/gms/internal/clearcut/zzez;

    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzbx;->a:Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/zzdm;->c()Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/clearcut/zzdu;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/zzdu;-><init>(Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdo;)V

    return-object v1

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzeh;->b:Lcom/google/android/gms/internal/clearcut/zzex;

    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzbx;->b:Lcom/google/android/gms/internal/clearcut/zzbu;

    if-eqz p1, :cond_3

    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/zzdm;->c()Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/clearcut/zzdu;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/zzdu;-><init>(Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdo;)V

    return-object v1

    :cond_3
    invoke-static {v1}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_6

    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/zzdm;->a()I

    move-result p0

    if-ne p0, p1, :cond_5

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzdy;->b:Lcom/google/android/gms/internal/clearcut/zzdx;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzcy;->b:Lcom/google/android/gms/internal/clearcut/zzdb;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzeh;->d:Lcom/google/android/gms/internal/clearcut/zzez;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzbx;->a:Lcom/google/android/gms/internal/clearcut/zzbv;

    :goto_1
    sget-object v8, Lcom/google/android/gms/internal/clearcut/zzdl;->b:Lcom/google/android/gms/internal/clearcut/zzdk;

    :goto_2
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/clearcut/zzds;->n(Lcom/google/android/gms/internal/clearcut/zzdm;Lcom/google/android/gms/internal/clearcut/zzdw;Lcom/google/android/gms/internal/clearcut/zzcy;Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdj;)Lcom/google/android/gms/internal/clearcut/zzds;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzdy;->b:Lcom/google/android/gms/internal/clearcut/zzdx;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzcy;->b:Lcom/google/android/gms/internal/clearcut/zzdb;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzeh;->d:Lcom/google/android/gms/internal/clearcut/zzez;

    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/zzdm;->a()I

    move-result p0

    if-ne p0, p1, :cond_8

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzdy;->a:Lcom/google/android/gms/internal/clearcut/zzdw;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzcy;->a:Lcom/google/android/gms/internal/clearcut/zzda;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzeh;->b:Lcom/google/android/gms/internal/clearcut/zzex;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzbx;->b:Lcom/google/android/gms/internal/clearcut/zzbu;

    if-eqz v7, :cond_7

    :goto_3
    sget-object v8, Lcom/google/android/gms/internal/clearcut/zzdl;->a:Lcom/google/android/gms/internal/clearcut/zzdj;

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_8
    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzdy;->a:Lcom/google/android/gms/internal/clearcut/zzdw;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzcy;->a:Lcom/google/android/gms/internal/clearcut/zzda;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzeh;->c:Lcom/google/android/gms/internal/clearcut/zzex;

    const/4 v7, 0x0

    goto :goto_3
.end method
