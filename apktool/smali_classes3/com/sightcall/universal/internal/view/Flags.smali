.class public final Lcom/sightcall/universal/internal/view/Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_DRAW:I = 0x1

.field public static final FLAG_DROP:I = 0x2

.field public static final FLAG_ERASE:I = 0xf

.field public static final FLAG_MOVE:I = 0xe

.field public static final FLAG_POINTER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofAction(Lcom/sightcall/common/DataChannelAction;)I
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/Flags$1;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 p0, 0xf

    return p0

    :cond_0
    const-string v0, "Invalid action: "

    invoke-static {p0, v0}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method
