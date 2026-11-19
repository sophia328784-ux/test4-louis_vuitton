.class final Landroidx/media3/extractor/mp4/SefReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/SefReader$DataReference;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/common/base/Splitter;

.field public static final e:Lcom/google/common/base/Splitter;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->a(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/SefReader;->d:Lcom/google/common/base/Splitter;

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->a(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/SefReader;->e:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/SefReader;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/SefReader;->b:I

    return-void
.end method
