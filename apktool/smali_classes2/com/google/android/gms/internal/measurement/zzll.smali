.class final synthetic Lcom/google/android/gms/internal/measurement/zzll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzll;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlj;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzll;->b:Landroid/content/Context;

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->b:Lcom/google/common/base/Supplier;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzlk;->m:Lcom/google/common/base/Supplier;

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->b:Lcom/google/common/base/Supplier;

    :cond_0
    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->c:Lcom/google/common/base/Supplier;

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->c:Lcom/google/common/base/Supplier;

    :cond_1
    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->d:Lcom/google/common/base/Supplier;

    if-nez p0, :cond_2

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzli;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzli;-><init>(Lcom/google/android/gms/internal/measurement/zzlj;)V

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->d:Lcom/google/common/base/Supplier;

    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->e:Lcom/google/common/base/Supplier;

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzrw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/zzrw;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzrx;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzrx;-><init>(Lcom/google/android/gms/internal/measurement/zzrw;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzsd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzsd;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzsx;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v2, v3, p0

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzlm;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->e:Lcom/google/common/base/Supplier;

    :cond_3
    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->f:Lcom/google/common/base/Supplier;

    if-nez p0, :cond_4

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzlh;-><init>(Lcom/google/android/gms/internal/measurement/zzlj;)V

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzlj;->f:Lcom/google/common/base/Supplier;

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzlj;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzlj;->b:Lcom/google/common/base/Supplier;

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzlj;->c:Lcom/google/common/base/Supplier;

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzlj;->d:Lcom/google/common/base/Supplier;

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzlj;->e:Lcom/google/common/base/Supplier;

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzlj;->f:Lcom/google/common/base/Supplier;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzlk;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-object v1
.end method
