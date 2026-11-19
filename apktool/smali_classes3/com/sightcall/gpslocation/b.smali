.class public final synthetic Lcom/sightcall/gpslocation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/sightcall/gpslocation/GpsRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/gpslocation/b;->b:Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/b;->b:Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    invoke-static {p0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->b(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
