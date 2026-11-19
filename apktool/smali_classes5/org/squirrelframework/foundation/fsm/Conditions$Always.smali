.class public Lorg/squirrelframework/foundation/fsm/Conditions$Always;
.super Lorg/squirrelframework/foundation/fsm/AnonymousCondition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/Conditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Always"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/squirrelframework/foundation/fsm/AnonymousCondition<",
        "TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/AnonymousCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public isSatisfied(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
