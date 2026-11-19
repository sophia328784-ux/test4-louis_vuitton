.class final synthetic Lcom/google/android/gms/measurement/internal/zzdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzbo;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/zzdn;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzdn;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    return-void
.end method


# virtual methods
.method public final d0()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzaic;->c:Lcom/google/android/gms/internal/measurement/zzaic;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaic;->a()Lcom/google/android/gms/internal/measurement/zzaid;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaid;->h0()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
