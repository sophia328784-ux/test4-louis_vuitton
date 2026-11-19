.class public final Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;",
        "",
        "Companion",
        "value",
        "",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->a:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;

    iget p1, p1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->a:I

    iget p0, p0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->a:I

    if-eq p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    iget p0, p0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->a:I

    if-ne p0, v0, :cond_0

    const-string p0, "Confirm"

    return-object p0

    :cond_0
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->b:I

    if-ne p0, v0, :cond_1

    const-string p0, "ContextClick"

    return-object p0

    :cond_1
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->c:I

    if-ne p0, v0, :cond_2

    const-string p0, "GestureEnd"

    return-object p0

    :cond_2
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->d:I

    if-ne p0, v0, :cond_3

    const-string p0, "GestureThresholdActivate"

    return-object p0

    :cond_3
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->e:I

    if-ne p0, v0, :cond_4

    const-string p0, "KeyboardTap"

    return-object p0

    :cond_4
    if-nez p0, :cond_5

    const-string p0, "LongPress"

    return-object p0

    :cond_5
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->f:I

    if-ne p0, v0, :cond_6

    const-string p0, "Reject"

    return-object p0

    :cond_6
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->g:I

    if-ne p0, v0, :cond_7

    const-string p0, "SegmentFrequentTick"

    return-object p0

    :cond_7
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->h:I

    if-ne p0, v0, :cond_8

    const-string p0, "SegmentTick"

    return-object p0

    :cond_8
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->i:I

    if-ne p0, v0, :cond_9

    const-string p0, "TextHandleMove"

    return-object p0

    :cond_9
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->j:I

    if-ne p0, v0, :cond_a

    const-string p0, "ToggleOff"

    return-object p0

    :cond_a
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->k:I

    if-ne p0, v0, :cond_b

    const-string p0, "ToggleOn"

    return-object p0

    :cond_b
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->l:I

    if-ne p0, v0, :cond_c

    const-string p0, "VirtualKey"

    return-object p0

    :cond_c
    const-string p0, "Invalid"

    return-object p0
.end method
