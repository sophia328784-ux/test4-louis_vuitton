.class public final Lcom/batch/android/e/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x895440

.field private static b:Z = false

.field private static c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Integer;
    .locals 5

    .line 65
    sget-boolean v0, Lcom/batch/android/e/p;->b:Z

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/batch/android/e/p;->c:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    :try_start_0
    const-class v2, Lcom/google/android/gms/common/GoogleApiAvailability;

    sget-object v3, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Ljava/lang/Object;

    .line 68
    const-string v3, "GOOGLE_PLAY_SERVICES_VERSION_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/batch/android/e/p;->c:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    sput-boolean v1, Lcom/batch/android/e/p;->b:Z

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 71
    :try_start_1
    const-string v3, "Push"

    const-string v4, "Error while retrieving Google Play Services lib version"

    invoke-static {v3, v4, v2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    sput-boolean v1, Lcom/batch/android/e/p;->b:Z

    return-object v0

    :goto_0
    sput-boolean v1, Lcom/batch/android/e/p;->b:Z

    .line 73
    throw v0

    .line 74
    :catch_1
    sput-boolean v1, Lcom/batch/android/e/p;->b:Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    .line 61
    :try_start_0
    const-class v1, Lcom/google/android/gms/common/GooglePlayServicesUtil;

    sget v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 62
    const-string v2, "isGooglePlayServicesAvailable"

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 64
    const-string v1, "Push"

    const-string v2, "Error while retrieving Google Play Services lib availability"

    invoke-static {v1, v2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    return-object v0
.end method

.method public static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "GOOGLE_PLAY_LIBRARY_MISSING"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x13

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN - Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :cond_2
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :cond_3
    const-string p0, "SERVICE_MISSING"

    return-object p0

    :cond_4
    const-string p0, "SUCCESS"

    return-object p0

    :cond_5
    const-string p0, "SERVICE_MISSING_PERMISSION"

    return-object p0

    :cond_6
    const-string p0, "SERVICE_UPDATING"

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    invoke-static {}, Lcom/batch/android/e/p;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x895440

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/e/p;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
