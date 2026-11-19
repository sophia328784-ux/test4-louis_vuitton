.class public Lcom/sightcall/universal/agent/Usecase$Multiparty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Multiparty"
.end annotation


# instance fields
.field attendee:Lcom/sightcall/universal/agent/Usecase$Attendee;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attendee"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
