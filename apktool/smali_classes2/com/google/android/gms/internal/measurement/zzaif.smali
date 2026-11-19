.class public final Lcom/google/android/gms/internal/measurement/zzaif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/zzaif;


# instance fields
.field public final b:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaif;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaif;->c:Lcom/google/android/gms/internal/measurement/zzaif;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaih;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->b(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaif;->b:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaif;->c:Lcom/google/android/gms/internal/measurement/zzaif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaif;->b()Lcom/google/android/gms/internal/measurement/zzaig;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/measurement/zzaig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaif;->b:Lcom/google/common/base/Supplier;

    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaig;

    return-object p0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaif;->b()Lcom/google/android/gms/internal/measurement/zzaig;

    move-result-object p0

    return-object p0
.end method
