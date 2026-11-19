.class public final Lcom/google/android/gms/internal/gtm/zzkn;
.super Lcom/google/android/gms/internal/gtm/zzkk;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Map;


# instance fields
.field public final b:Lcom/google/android/gms/internal/gtm/zzdi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hasOwnProperty"

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzfj;->a:Lcom/google/android/gms/internal/gtm/zzfj;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzkn;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzdi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzkk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzdi;
    .locals 1

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzkn;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzdi;

    return-object p0

    :cond_0
    const-string p0, "Native Method "

    const-string v0, " is not defined for type InstructionReference."

    invoke-static {p0, p1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    return-object p0
.end method

.method public final e()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzkk;->d()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzkn;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
