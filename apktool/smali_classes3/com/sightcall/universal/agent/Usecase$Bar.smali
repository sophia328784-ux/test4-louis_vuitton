.class public Lcom/sightcall/universal/agent/Usecase$Bar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Usecase$Bar$Button;,
        Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    }
.end annotation


# instance fields
.field public alwaysvisible:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "always-visible"
    .end annotation
.end field

.field public buttons:[Lcom/sightcall/universal/agent/Usecase$Bar$Button;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "buttons"
    .end annotation
.end field

.field public role:Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "role"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
