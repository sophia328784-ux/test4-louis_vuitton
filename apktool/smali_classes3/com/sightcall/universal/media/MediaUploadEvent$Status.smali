.class public final enum Lcom/sightcall/universal/media/MediaUploadEvent$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/MediaUploadEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/media/MediaUploadEvent$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/media/MediaUploadEvent$Status;

.field public static final enum CANCELLED:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

.field public static final enum FAILURE:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

.field public static final enum RESCHEDULED:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

.field public static final enum SUCCESS:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

.field public static final enum UPLOADING:Lcom/sightcall/universal/media/MediaUploadEvent$Status;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/media/MediaUploadEvent$Status;
    .locals 5

    sget-object v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->UPLOADING:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    sget-object v1, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->CANCELLED:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    sget-object v2, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->SUCCESS:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    sget-object v3, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->FAILURE:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    sget-object v4, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->RESCHEDULED:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    const-string v1, "UPLOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/MediaUploadEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->UPLOADING:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    new-instance v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/MediaUploadEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->CANCELLED:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    new-instance v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/MediaUploadEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->SUCCESS:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    new-instance v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    const-string v1, "FAILURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/MediaUploadEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->FAILURE:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    new-instance v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    const-string v1, "RESCHEDULED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/media/MediaUploadEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->RESCHEDULED:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-static {}, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->$values()[Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->$VALUES:[Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/media/MediaUploadEvent$Status;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/media/MediaUploadEvent$Status;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->$VALUES:[Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-virtual {v0}, [Lcom/sightcall/universal/media/MediaUploadEvent$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    return-object v0
.end method
