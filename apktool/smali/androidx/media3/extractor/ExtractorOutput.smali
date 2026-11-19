.class public interface abstract Landroidx/media3/extractor/ExtractorOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g0:Landroidx/media3/extractor/ExtractorOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/ExtractorOutput$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/extractor/ExtractorOutput;->g0:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public abstract j(Landroidx/media3/extractor/SeekMap;)V
.end method

.method public abstract n()V
.end method

.method public abstract r(II)Landroidx/media3/extractor/TrackOutput;
.end method
