.class public Lcom/linkplay/medialib/server/MediaServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final defaultPort:I = 0x2be2

.field public static port:I

.field private static portExt:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/linkplay/medialib/server/MediaServer;->portExt:I

    const/16 v0, 0x2be2

    sput v0, Lcom/linkplay/medialib/server/MediaServer;->port:I

    new-instance v0, Lcom/linkplay/medialib/server/HttpServer;

    sget v1, Lcom/linkplay/medialib/server/MediaServer;->port:I

    invoke-direct {v0, v1}, Lcom/linkplay/medialib/server/HttpServer;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
