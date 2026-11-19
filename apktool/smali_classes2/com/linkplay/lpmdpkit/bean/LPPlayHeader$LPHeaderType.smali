.class public Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPHeaderType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LPHeaderType"
.end annotation


# static fields
.field public static final LP_HEADER_TYPE_ALBUM:I = 0x2

.field public static final LP_HEADER_TYPE_ARTIST:I = 0x3

.field public static final LP_HEADER_TYPE_COLLECTION:I = 0x0

.field public static final LP_HEADER_TYPE_EPISODE:I = 0x8

.field public static final LP_HEADER_TYPE_PLAYLIST:I = 0x1

.field public static final LP_HEADER_TYPE_PODCAST:I = 0x6

.field public static final LP_HEADER_TYPE_SHOW:I = 0x7

.field public static final LP_HEADER_TYPE_SONG:I = 0x5

.field public static final LP_HEADER_TYPE_STATION:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
