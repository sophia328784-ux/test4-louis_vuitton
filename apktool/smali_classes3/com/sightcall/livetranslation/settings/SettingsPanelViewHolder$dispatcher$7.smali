.class final Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
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


# static fields
.field public static final INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;

    invoke-direct {v0}, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;-><init>()V

    sput-object v0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lkotlin/Unit;)Lcom/sightcall/libraries/archi/nucleus/Action;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$LargeSizeSelected;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$LargeSizeSelected;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;->apply(Lkotlin/Unit;)Lcom/sightcall/libraries/archi/nucleus/Action;

    move-result-object p0

    return-object p0
.end method
