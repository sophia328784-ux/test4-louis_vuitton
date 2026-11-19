.class public final Lcom/sightcall/pratik/mappers/KeyEventMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toKeyEvent",
        "Lcom/sightcall/pratik/KeyEvent;",
        "",
        "pratik_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toKeyEvent(I)Lcom/sightcall/pratik/KeyEvent;
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sightcall/pratik/KeyEvent$BackButton;->INSTANCE:Lcom/sightcall/pratik/KeyEvent$BackButton;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
