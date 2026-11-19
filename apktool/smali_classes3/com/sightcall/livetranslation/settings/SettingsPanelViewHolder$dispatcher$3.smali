.class final Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$3;->this$0:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$3;->this$0:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->access$getSkipCheckedChanges$p(Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$3;->test(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method
