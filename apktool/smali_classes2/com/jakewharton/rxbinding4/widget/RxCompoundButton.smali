.class public abstract Lcom/jakewharton/rxbinding4/widget/RxCompoundButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {}
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Landroidx/appcompat/widget/SwitchCompat;)Lcom/jakewharton/rxbinding4/InitialValueObservable;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/CompoundButtonCheckedChangeObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/widget/CompoundButtonCheckedChangeObservable;-><init>(Landroid/widget/CompoundButton;)V

    return-object v0
.end method
