.class final Lcom/google/android/gms/internal/vision/zzky;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/vision/zzky;


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/zzkb;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzky;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzky;->c:Lcom/google/android/gms/internal/vision/zzky;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzky;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/vision/zzkb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzkb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzky;->a:Lcom/google/android/gms/internal/vision/zzkb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzky;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/zzlc;

    if-nez v2, :cond_a

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzky;->a:Lcom/google/android/gms/internal/vision/zzkb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    const-class v2, Lcom/google/android/gms/internal/vision/zzjb;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzkb;->a:Lcom/google/android/gms/internal/vision/zzkd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzkd;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzki;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/zzki;->e0()Z

    move-result p0

    const-string v4, "Protobuf runtime is not correctly loaded."

    if-eqz p0, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/vision/zzle;->d:Lcom/google/android/gms/internal/vision/zzlw;

    sget-object v0, Lcom/google/android/gms/internal/vision/zzir;->a:Lcom/google/android/gms/internal/vision/zzip;

    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/zzki;->f0()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/vision/zzkq;

    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/gms/internal/vision/zzkq;-><init>(Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkk;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzle;->b:Lcom/google/android/gms/internal/vision/zzlu;

    sget-object v2, Lcom/google/android/gms/internal/vision/zzir;->b:Lcom/google/android/gms/internal/vision/zziq;

    if-eqz v2, :cond_3

    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/zzki;->f0()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/vision/zzkq;

    invoke-direct {v3, p0, v2, v0}, Lcom/google/android/gms/internal/vision/zzkq;-><init>(Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkk;)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_6

    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/zzki;->d0()I

    move-result p0

    if-ne p0, v2, :cond_5

    sget-object v4, Lcom/google/android/gms/internal/vision/zzku;->b:Lcom/google/android/gms/internal/vision/zzkv;

    sget-object v5, Lcom/google/android/gms/internal/vision/zzju;->b:Lcom/google/android/gms/internal/vision/zzjz;

    sget-object v6, Lcom/google/android/gms/internal/vision/zzle;->d:Lcom/google/android/gms/internal/vision/zzlw;

    sget-object v7, Lcom/google/android/gms/internal/vision/zzir;->a:Lcom/google/android/gms/internal/vision/zzip;

    sget-object v8, Lcom/google/android/gms/internal/vision/zzkj;->b:Lcom/google/android/gms/internal/vision/zzkg;

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/zzko;->l(Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;

    move-result-object v3

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/vision/zzku;->b:Lcom/google/android/gms/internal/vision/zzkv;

    sget-object v5, Lcom/google/android/gms/internal/vision/zzju;->b:Lcom/google/android/gms/internal/vision/zzjz;

    sget-object v6, Lcom/google/android/gms/internal/vision/zzle;->d:Lcom/google/android/gms/internal/vision/zzlw;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/gms/internal/vision/zzkj;->b:Lcom/google/android/gms/internal/vision/zzkg;

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/zzko;->l(Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/zzki;->d0()I

    move-result p0

    if-ne p0, v2, :cond_8

    move-object p0, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/zzku;->a:Lcom/google/android/gms/internal/vision/zzks;

    sget-object v5, Lcom/google/android/gms/internal/vision/zzju;->a:Lcom/google/android/gms/internal/vision/zzjw;

    sget-object v6, Lcom/google/android/gms/internal/vision/zzle;->b:Lcom/google/android/gms/internal/vision/zzlu;

    sget-object v7, Lcom/google/android/gms/internal/vision/zzir;->b:Lcom/google/android/gms/internal/vision/zziq;

    if-eqz v7, :cond_7

    sget-object v8, Lcom/google/android/gms/internal/vision/zzkj;->a:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/zzko;->l(Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_8
    sget-object v4, Lcom/google/android/gms/internal/vision/zzku;->a:Lcom/google/android/gms/internal/vision/zzks;

    sget-object v5, Lcom/google/android/gms/internal/vision/zzju;->a:Lcom/google/android/gms/internal/vision/zzjw;

    sget-object v6, Lcom/google/android/gms/internal/vision/zzle;->c:Lcom/google/android/gms/internal/vision/zzlu;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/gms/internal/vision/zzkj;->a:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/zzko;->l(Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzlc;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    return-object v3

    :cond_a
    return-object v2

    :cond_b
    const-string p0, "messageType"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method
