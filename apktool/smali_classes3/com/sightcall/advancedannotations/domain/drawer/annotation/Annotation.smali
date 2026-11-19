.class public abstract Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008 \u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH&J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000fH\u0004J\u0008\u0010\u0019\u001a\u00020\u000bH&J\u0008\u0010\u001a\u001a\u00020\u000bH&J\u0006\u0010\u001b\u001a\u00020\u000bJ\u0006\u0010\u0008\u001a\u00020\u000bJ\u0008\u0010\u001c\u001a\u00020\u000bH&J\u0014\u0010\u001d\u001a\u00020\u000b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001fJ\u001e\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000f2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001fH\u0002J\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u000fH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u000fX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u000fX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u000e\u0010\u0018\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
        "",
        "view",
        "Landroid/view/ViewGroup;",
        "<init>",
        "(Landroid/view/ViewGroup;)V",
        "getView",
        "()Landroid/view/ViewGroup;",
        "needsUpdate",
        "",
        "delete",
        "",
        "getDimension",
        "",
        "res",
        "",
        "initialAnimationValue",
        "getInitialAnimationValue",
        "()I",
        "setInitialAnimationValue",
        "(I)V",
        "targetAnimationValue",
        "getTargetAnimationValue",
        "setTargetAnimationValue",
        "currentValue",
        "moveToFront",
        "updateLayout",
        "invalidate",
        "reloadLayout",
        "fadeOut",
        "completion",
        "Lkotlin/Function0;",
        "updateAlpha",
        "step",
        "applyAnimationValue",
        "value",
        "Companion",
        "advancedannotations_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation$Companion;

.field private static final fadeOutAnimationDelay:J

.field private static final fadeOutAnimationDuration:J

.field private static final fadeOutAnimationSteps:I


# instance fields
.field private currentValue:I

.field private initialAnimationValue:I

.field private needsUpdate:Z

.field private targetAnimationValue:I

.field private final view:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation$Companion;

    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOutAnimationDelay:J

    sput-wide v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOutAnimationDuration:J

    const/16 v0, 0x14

    sput v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOutAnimationSteps:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->view:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOut$lambda$0$0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;ILkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->updateAlpha$lambda$0(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic c(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOut$lambda$0(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final fadeOut$lambda$0(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    iget v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->initialAnimationValue:I

    iget v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    sub-int v1, v0, v1

    sget v2, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOutAnimationSteps:I

    div-int/2addr v1, v2

    iput v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->currentValue:I

    new-instance v0, Lh1;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-direct {p0, v1, v0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->updateAlpha(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final fadeOut$lambda$0$0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final updateAlpha(ILkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-lez p1, :cond_0

    iget v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->currentValue:I

    iget v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    if-le v0, v1, :cond_1

    :cond_0
    if-gez p1, :cond_2

    iget v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->currentValue:I

    iget v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    if-lt v0, v1, :cond_2

    :cond_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_2
    iget v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->currentValue:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->currentValue:I

    if-lez p1, :cond_3

    iget v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    if-lt v0, v1, :cond_4

    :cond_3
    if-gez p1, :cond_5

    iget v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    if-le v0, v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    iput v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->currentValue:I

    :cond_5
    iget v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->currentValue:I

    invoke-virtual {p0, v0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->applyAnimationValue(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lq6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lq6;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    sget-wide p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOutAnimationDuration:J

    sget p2, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOutAnimationSteps:I

    int-to-long v2, p2

    div-long/2addr p0, v2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final updateAlpha$lambda$0(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;ILkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->updateAlpha(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public applyAnimationValue(I)V
    .locals 0

    return-void
.end method

.method public abstract delete()V
.end method

.method public final fadeOut(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->initialAnimationValue:I

    iget v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lr6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-wide p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOutAnimationDelay:J

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getDimension(I)F
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->view:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getInitialAnimationValue()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->initialAnimationValue:I

    return p0
.end method

.method public final getTargetAnimationValue()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    return p0
.end method

.method public final getView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->view:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->needsUpdate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->updateLayout()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->needsUpdate:Z

    return-void
.end method

.method public abstract moveToFront()V
.end method

.method public final needsUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->needsUpdate:Z

    return-void
.end method

.method public abstract reloadLayout()V
.end method

.method public final setInitialAnimationValue(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->initialAnimationValue:I

    return-void
.end method

.method public final setTargetAnimationValue(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->targetAnimationValue:I

    return-void
.end method

.method public abstract updateLayout()V
.end method
