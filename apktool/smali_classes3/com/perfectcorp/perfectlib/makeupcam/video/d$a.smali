.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/video/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

.field public static final enum b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

.field public static final enum c:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

.field public static final enum d:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

.field public static final enum e:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    const-string v1, "PAUSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    const-string v1, "RESUME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    const-string v1, "STOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    return-void
.end method
