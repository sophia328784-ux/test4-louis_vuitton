.class final Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Show"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "<init>",
        "()V",
        "livetranslation_release"
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
.field public static final INSTANCE:Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;

    invoke-direct {v0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;-><init>()V

    sput-object v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;->INSTANCE:Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
