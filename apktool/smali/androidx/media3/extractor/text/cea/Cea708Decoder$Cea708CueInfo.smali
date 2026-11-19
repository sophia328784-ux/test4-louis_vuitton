.class final Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cea708CueInfo"
.end annotation


# static fields
.field public static final c:Landroidx/media3/extractor/text/cea/a;


# instance fields
.field public final a:Landroidx/media3/common/text/Cue;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/text/cea/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->c:Landroidx/media3/extractor/text/cea/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    iput-object p1, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    iput-object p2, v0, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    iput p3, v0, Landroidx/media3/common/text/Cue$Builder;->e:F

    iput p4, v0, Landroidx/media3/common/text/Cue$Builder;->f:I

    iput p5, v0, Landroidx/media3/common/text/Cue$Builder;->g:I

    iput p6, v0, Landroidx/media3/common/text/Cue$Builder;->h:F

    iput p7, v0, Landroidx/media3/common/text/Cue$Builder;->i:I

    iput p8, v0, Landroidx/media3/common/text/Cue$Builder;->l:F

    if-eqz p9, :cond_0

    iput p10, v0, Landroidx/media3/common/text/Cue$Builder;->o:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/media3/common/text/Cue$Builder;->n:Z

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->a:Landroidx/media3/common/text/Cue;

    iput p11, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->b:I

    return-void
.end method
