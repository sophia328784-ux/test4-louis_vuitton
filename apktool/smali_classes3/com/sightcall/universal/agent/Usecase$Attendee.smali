.class public Lcom/sightcall/universal/agent/Usecase$Attendee;
.super Lcom/sightcall/universal/agent/Usecase$User;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attendee"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/agent/Usecase$User;-><init>()V

    return-void
.end method


# virtual methods
.method public chat()Lcom/sightcall/universal/agent/Usecase$Chat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
