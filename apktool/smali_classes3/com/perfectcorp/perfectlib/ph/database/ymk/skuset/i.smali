.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;
    }
.end annotation


# instance fields
.field public final colorReferences:Ljava/util/List;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "color_references"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public final ombreLineOffset:F
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "ombre_line_offset"
    .end annotation
.end field

.field public final ombreRange:F
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "ombre_range"
    .end annotation
.end field

.field public final patternGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "pattern_guid"
    .end annotation
.end field

.field public final skuSetGuid:Ljava/lang/String;

.field public final supportedPatternGuid:Ljava/lang/String;

.field public final thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->skuSetGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->supportedPatternGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->patternGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->thumbnail:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->ombreRange:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->ombreLineOffset:F

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    return-void
.end method
