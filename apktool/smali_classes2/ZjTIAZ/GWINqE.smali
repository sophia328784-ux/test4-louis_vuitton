.class public abstract LZjTIAZ/GWINqE;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x1cff

.field public static b:I = 0x1906


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#\u00149\u0001\u001f\u001f\u0016\u0014=\u001c\u0004\u000e\u0004"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "#\u00149\u0001\u001f\u001f\u0016\u0014=\u001c\u0004\u000e\u0005\u001a"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, LZjTIAZ/GWINqE;->b:I

    xor-int/lit16 v1, v1, 0x1906

    if-eqz v1, :cond_5

    :goto_0
    sget v1, LZjTIAZ/GWINqE;->b:I

    add-int/lit8 v2, v1, 0x1a

    const/16 v3, 0x48

    if-eq v2, v3, :cond_2

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_4

    const/16 v3, 0x142

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1b2

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_0
    sget p0, LZjTIAZ/GWINqE;->b:I

    rem-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1d

    sput p0, LZjTIAZ/GWINqE;->b:I

    sget p0, LZjTIAZ/GWINqE;->a:I

    const/16 v0, 0x1cfe

    if-gt p0, v0, :cond_0

    :goto_1
    sget p0, LZjTIAZ/GWINqE;->a:I

    add-int/lit8 v0, p0, 0x4e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    shr-int/lit8 p0, p0, 0x2a

    xor-int/lit16 p0, p0, 0x1359

    rem-int/lit8 p0, p0, 0x7b

    sput p0, LZjTIAZ/GWINqE;->a:I

    goto :goto_1

    :cond_2
    mul-int/lit16 v2, v1, 0xe7a

    add-int/2addr v2, v1

    sput v2, LZjTIAZ/GWINqE;->b:I

    :cond_3
    sget v2, LZjTIAZ/GWINqE;->b:I

    shr-int/lit8 v2, v2, 0x1a

    shr-int/lit8 v2, v2, 0x68

    xor-int/lit16 v2, v2, 0xe43

    sput v2, LZjTIAZ/GWINqE;->b:I

    :cond_4
    sget v2, LZjTIAZ/GWINqE;->b:I

    mul-int/lit16 v2, v2, 0x2749

    add-int/2addr v2, v1

    sput v2, LZjTIAZ/GWINqE;->b:I

    :cond_5
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static b(Ljava/lang/Exception;)V
    .locals 2

    :try_start_0
    invoke-static {}, LZjTIAZ/XbALEN;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LZjTIAZ/XbALEN;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, LZjTIAZ/GWINqE;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, LZjTIAZ/XbALEN;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sput-object p0, LZjTIAZ/XbALEN;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
