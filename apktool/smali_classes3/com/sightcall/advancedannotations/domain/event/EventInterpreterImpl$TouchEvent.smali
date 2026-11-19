.class public abstract Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TouchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;,
        Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;,
        Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0003\n\u000b\u000cB\u0019\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u0082\u0001\u0003\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
        "",
        "x",
        "",
        "y",
        "<init>",
        "(II)V",
        "getX",
        "()I",
        "getY",
        "Down",
        "Move",
        "Up",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;",
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


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;->x:I

    iput p2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;->y:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;->x:I

    return p0
.end method

.method public getY()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;->y:I

    return p0
.end method
