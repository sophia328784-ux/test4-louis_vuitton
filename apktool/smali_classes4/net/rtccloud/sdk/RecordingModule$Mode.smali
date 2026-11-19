.class public final enum Lnet/rtccloud/sdk/RecordingModule$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/RecordingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/RecordingModule$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/RecordingModule$Mode;

.field public static final enum AUDIO_AND_VIDEO:Lnet/rtccloud/sdk/RecordingModule$Mode;

.field public static final enum AUDIO_ONLY:Lnet/rtccloud/sdk/RecordingModule$Mode;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/RecordingModule$Mode;
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Mode;->AUDIO_ONLY:Lnet/rtccloud/sdk/RecordingModule$Mode;

    sget-object v1, Lnet/rtccloud/sdk/RecordingModule$Mode;->AUDIO_AND_VIDEO:Lnet/rtccloud/sdk/RecordingModule$Mode;

    filled-new-array {v0, v1}, [Lnet/rtccloud/sdk/RecordingModule$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/rtccloud/sdk/RecordingModule$Mode;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, "AUDIO_ONLY"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/RecordingModule$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Mode;->AUDIO_ONLY:Lnet/rtccloud/sdk/RecordingModule$Mode;

    new-instance v0, Lnet/rtccloud/sdk/RecordingModule$Mode;

    const/4 v1, 0x1

    const/4 v2, 0x7

    const-string v3, "AUDIO_AND_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/RecordingModule$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Mode;->AUDIO_AND_VIDEO:Lnet/rtccloud/sdk/RecordingModule$Mode;

    invoke-static {}, Lnet/rtccloud/sdk/RecordingModule$Mode;->$values()[Lnet/rtccloud/sdk/RecordingModule$Mode;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Mode;->$VALUES:[Lnet/rtccloud/sdk/RecordingModule$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/rtccloud/sdk/RecordingModule$Mode;->value:I

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/RecordingModule$Mode;)I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/RecordingModule$Mode;->value:I

    return p0
.end method

.method public static getMode(I)Lnet/rtccloud/sdk/RecordingModule$Mode;
    .locals 5

    invoke-static {}, Lnet/rtccloud/sdk/RecordingModule$Mode;->values()[Lnet/rtccloud/sdk/RecordingModule$Mode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lnet/rtccloud/sdk/RecordingModule$Mode;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/RecordingModule$Mode;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/RecordingModule$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/RecordingModule$Mode;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/RecordingModule$Mode;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Mode;->$VALUES:[Lnet/rtccloud/sdk/RecordingModule$Mode;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/RecordingModule$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/RecordingModule$Mode;

    return-object v0
.end method
