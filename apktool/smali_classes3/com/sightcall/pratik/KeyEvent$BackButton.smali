.class public final Lcom/sightcall/pratik/KeyEvent$BackButton;
.super Lcom/sightcall/pratik/KeyEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/pratik/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackButton"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sightcall/pratik/KeyEvent$BackButton;",
        "Lcom/sightcall/pratik/KeyEvent;",
        "<init>",
        "()V",
        "pratik_release"
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
.field public static final INSTANCE:Lcom/sightcall/pratik/KeyEvent$BackButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/pratik/KeyEvent$BackButton;

    invoke-direct {v0}, Lcom/sightcall/pratik/KeyEvent$BackButton;-><init>()V

    sput-object v0, Lcom/sightcall/pratik/KeyEvent$BackButton;->INSTANCE:Lcom/sightcall/pratik/KeyEvent$BackButton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/pratik/KeyEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
