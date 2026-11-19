.class public final Lcom/google/android/gms/internal/measurement/zzags;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/zzags;


# instance fields
.field public final b:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzags;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzags;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzags;->c:Lcom/google/android/gms/internal/measurement/zzags;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzagu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzagu;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->b(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzags;->b:Lcom/google/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzagt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzags;->b:Lcom/google/common/base/Supplier;

    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzagt;

    return-object p0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzags;->a()Lcom/google/android/gms/internal/measurement/zzagt;

    move-result-object p0

    return-object p0
.end method
