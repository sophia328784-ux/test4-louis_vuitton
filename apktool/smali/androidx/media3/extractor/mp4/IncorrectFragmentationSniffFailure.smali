.class public final Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SniffFailure;


# static fields
.field public static final b:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

.field public static final c:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;-><init>(Z)V

    sput-object v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->b:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    new-instance v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;-><init>(Z)V

    sput-object v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->c:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->a:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IncorrectFragmentation{expected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->a:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "}"

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
