.class public final synthetic Lcom/sightcall/universal/internal/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/ui/CallActivity$ScreenCastCallback;


# instance fields
.field public final synthetic a:Lcom/sightcall/universal/internal/ui/CallActivity;

.field public final synthetic b:Landroid/app/Service;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/a;->a:Lcom/sightcall/universal/internal/ui/CallActivity;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/a;->b:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public final onResult(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/a;->a:Lcom/sightcall/universal/internal/ui/CallActivity;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/a;->b:Landroid/app/Service;

    invoke-static {v0, p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallActivity;->O(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/app/Service;ILandroid/content/Intent;)V

    return-void
.end method
