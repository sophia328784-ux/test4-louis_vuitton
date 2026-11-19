.class Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# static fields
.field public static final c:Landroidx/media3/extractor/text/webvtt/a;


# instance fields
.field public final a:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/text/webvtt/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->c:Landroidx/media3/extractor/text/webvtt/a;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->a:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iput p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->b:I

    return-void
.end method
