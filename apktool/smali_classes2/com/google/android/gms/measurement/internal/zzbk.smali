.class final synthetic Lcom/google/android/gms/measurement/internal/zzbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzbo;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/zzbk;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbk;->a:Lcom/google/android/gms/measurement/internal/zzbk;

    return-void
.end method


# virtual methods
.method public final d0()Ljava/lang/Object;
    .locals 1

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzagy;->c:Lcom/google/android/gms/internal/measurement/zzagy;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzagy;->b:Lcom/google/common/base/Supplier;

    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzagz;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzagz;->e0()Z

    move-result p0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
