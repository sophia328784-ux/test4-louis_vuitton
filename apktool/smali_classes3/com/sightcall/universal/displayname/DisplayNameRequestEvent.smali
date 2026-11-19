.class public Lcom/sightcall/universal/displayname/DisplayNameRequestEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final displayNameAndLiveTranslation:Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/displayname/DisplayNameRequestEvent;->displayNameAndLiveTranslation:Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;

    return-void
.end method


# virtual methods
.method public displayNameAndLiveTranslation()Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/displayname/DisplayNameRequestEvent;->displayNameAndLiveTranslation:Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;

    return-object p0
.end method
