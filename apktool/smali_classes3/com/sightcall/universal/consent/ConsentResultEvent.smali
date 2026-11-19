.class public Lcom/sightcall/universal/consent/ConsentResultEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final consent:Lcom/sightcall/session/Reference$UseCase$Consent;


# direct methods
.method public constructor <init>(Lcom/sightcall/session/Reference$UseCase$Consent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/consent/ConsentResultEvent;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    return-void
.end method


# virtual methods
.method public consent()Lcom/sightcall/session/Reference$UseCase$Consent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/consent/ConsentResultEvent;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    return-object p0
.end method
