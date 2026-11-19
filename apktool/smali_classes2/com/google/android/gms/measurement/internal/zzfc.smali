.class final synthetic Lcom/google/android/gms/measurement/internal/zzfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzbo;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/zzfc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzfc;->a:Lcom/google/android/gms/measurement/internal/zzfc;

    return-void
.end method


# virtual methods
.method public final d0()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzahk;->c:Lcom/google/android/gms/internal/measurement/zzahk;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzahk;->b:Lcom/google/common/base/Supplier;

    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzahl;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzahl;->f0()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
