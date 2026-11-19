.class final Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartTag"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->b:I

    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->d:Ljava/util/Set;

    return-void
.end method
