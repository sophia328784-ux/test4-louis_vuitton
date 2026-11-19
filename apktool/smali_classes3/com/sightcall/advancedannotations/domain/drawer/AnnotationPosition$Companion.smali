.class public final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\tJ\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;",
        "x",
        "",
        "y",
        "from$advancedannotations_release",
        "event",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
        "view",
        "Landroid/view/View;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from$advancedannotations_release(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Landroid/view/View;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;->getX()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;->getY()I

    move-result p1

    int-to-double v2, p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;-><init>(DD)V

    return-object p0
.end method

.method public final from$advancedannotations_release(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-double v1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-double p1, p1

    div-double/2addr p1, v3

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;-><init>(DD)V

    return-object p0
.end method
