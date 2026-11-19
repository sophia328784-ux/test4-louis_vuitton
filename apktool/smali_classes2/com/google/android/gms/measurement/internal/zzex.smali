.class final synthetic Lcom/google/android/gms/measurement/internal/zzex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzbo;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/zzex;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzex;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzex;->a:Lcom/google/android/gms/measurement/internal/zzex;

    return-void
.end method


# virtual methods
.method public final d0()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzahw;->c:Lcom/google/android/gms/internal/measurement/zzahw;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzahw;->b:Lcom/google/common/base/Supplier;

    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzahx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzahx;->d0()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
