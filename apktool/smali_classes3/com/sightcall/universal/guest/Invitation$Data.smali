.class Lcom/sightcall/universal/guest/Invitation$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/Invitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field conferenceId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "conference"
    .end annotation
.end field

.field id:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field suffix:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "suffix"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
