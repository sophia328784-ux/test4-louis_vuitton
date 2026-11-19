.class Lcom/sightcall/universal/internal/location/LocationDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/location/LocationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/location/LocationDialog;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/location/LocationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/location/LocationDialog$1;->this$0:Lcom/sightcall/universal/internal/location/LocationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/location/LocationDialog$1;->this$0:Lcom/sightcall/universal/internal/location/LocationDialog;

    invoke-static {v0}, Lcom/sightcall/universal/internal/location/LocationDialog;->s(Lcom/sightcall/universal/internal/location/LocationDialog;)Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->TIMEOUT:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    invoke-interface {v0, v1}, Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;->onRequestLocationConfirmation(Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/location/LocationDialog$1;->this$0:Lcom/sightcall/universal/internal/location/LocationDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
