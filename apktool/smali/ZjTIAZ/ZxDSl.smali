.class public abstract LZjTIAZ/ZxDSl;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field public static b:J

.field public static c:I

.field public static d:I

.field public static e:J

.field public static f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LZjTIAZ/ZxDSl;->a:J

    const-string v0, "}@{@\\@pDpET"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, LZjTIAZ/ZxDSl;->b:J

    const/4 v2, 0x0

    sput v2, LZjTIAZ/ZxDSl;->c:I

    sput v2, LZjTIAZ/ZxDSl;->d:I

    sput-wide v0, LZjTIAZ/ZxDSl;->e:J

    const/4 v0, -0x1

    sput v0, LZjTIAZ/ZxDSl;->f:I

    return-void
.end method
