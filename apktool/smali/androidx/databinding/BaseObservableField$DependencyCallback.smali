.class Landroidx/databinding/BaseObservableField$DependencyCallback;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/BaseObservableField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DependencyCallback"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/databinding/BaseObservableField;


# direct methods
.method public constructor <init>(Landroidx/databinding/BaseObservableField;)V
    .locals 0

    iput-object p1, p0, Landroidx/databinding/BaseObservableField$DependencyCallback;->a:Landroidx/databinding/BaseObservableField;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/databinding/Observable;I)V
    .locals 0

    iget-object p0, p0, Landroidx/databinding/BaseObservableField$DependencyCallback;->a:Landroidx/databinding/BaseObservableField;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Landroidx/databinding/BaseObservable;->b:Landroidx/databinding/PropertyChangeRegistry;

    if-nez p1, :cond_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroidx/databinding/CallbackRegistry;->c(Landroidx/databinding/BaseObservable;I)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
