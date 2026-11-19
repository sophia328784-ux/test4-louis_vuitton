.class public final Lcom/google/android/gms/internal/measurement/zzaja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/zzaja;


# instance fields
.field public final b:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaja;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaja;->c:Lcom/google/android/gms/internal/measurement/zzaja;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzajc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzajc;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->b(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaja;->b:Lcom/google/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaja;->b:Lcom/google/common/base/Supplier;

    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzajb;

    return-object p0
.end method
