.class public final Lcom/batch/android/t0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/u0/c;

.field public static final b:Lcom/batch/android/u0/a;

.field public static final c:Lcom/batch/android/u0/c;

.field public static final d:Lcom/batch/android/u0/a;

.field public static final e:Lcom/batch/android/u0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/u0/c;

    const-string v1, "sdk_local_campaigns_jit_ws_duration"

    invoke-direct {v0, v1}, Lcom/batch/android/u0/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/u0/b;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/c;

    sput-object v0, Lcom/batch/android/t0/b;->a:Lcom/batch/android/u0/c;

    new-instance v0, Lcom/batch/android/u0/a;

    const-string v1, "sdk_local_campaigns_jit_ws_count"

    invoke-direct {v0, v1}, Lcom/batch/android/u0/a;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/batch/android/u0/b;->a([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/a;

    invoke-virtual {v0}, Lcom/batch/android/u0/b;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/a;

    sput-object v0, Lcom/batch/android/t0/b;->b:Lcom/batch/android/u0/a;

    new-instance v0, Lcom/batch/android/u0/c;

    const-string v2, "sdk_local_campaigns_sync_ws_duration"

    invoke-direct {v0, v2}, Lcom/batch/android/u0/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/u0/b;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/c;

    sput-object v0, Lcom/batch/android/t0/b;->c:Lcom/batch/android/u0/c;

    new-instance v0, Lcom/batch/android/u0/a;

    const-string v2, "sdk_dns_error_count"

    invoke-direct {v0, v2}, Lcom/batch/android/u0/a;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/u0/b;->a([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/a;

    invoke-virtual {v0}, Lcom/batch/android/u0/b;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/a;

    sput-object v0, Lcom/batch/android/t0/b;->d:Lcom/batch/android/u0/a;

    new-instance v0, Lcom/batch/android/u0/a;

    const-string v1, "sdk_download_image_error_count"

    invoke-direct {v0, v1}, Lcom/batch/android/u0/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/u0/b;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/a;

    sput-object v0, Lcom/batch/android/t0/b;->e:Lcom/batch/android/u0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/batch/android/u0/c;
    .locals 2

    new-instance v0, Lcom/batch/android/u0/c;

    const-string v1, "sdk_download_image_duration"

    invoke-direct {v0, v1}, Lcom/batch/android/u0/c;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/u0/b;->a([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/c;

    invoke-virtual {v0}, Lcom/batch/android/u0/b;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/c;

    return-object v0
.end method
