.class public final Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;",
        "Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;",
        "Landroid/view/View;",
        "view",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/Matrix;",
        "",
        "localToScreen",
        "Landroidx/compose/foundation/text/input/internal/InputMethodManager;",
        "inputMethodManager",
        "<init>",
        "(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

.field public c:Lkotlin/jvm/functions/Function1;

.field public d:Lkotlin/jvm/functions/Function1;

.field public e:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public f:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public g:Landroidx/compose/ui/platform/ViewConfiguration;

.field public h:Landroidx/compose/ui/text/input/TextFieldValue;

.field public i:Landroidx/compose/ui/text/input/ImeOptions;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lkotlin/Lazy;

.field public l:Landroid/graphics/Rect;

.field public final m:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/input/internal/InputMethodManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->a:Landroid/view/View;

    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->b:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    new-instance p1, Ln60;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Ln60;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->c:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ln60;

    const/16 v0, 0x1c

    invoke-direct {p1, v0}, Ln60;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->d:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/ui/text/input/TextFieldValue;

    sget-object p1, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/text/TextRange;->c:J

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v2, ""

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    sget-object p1, Landroidx/compose/ui/text/input/ImeOptions;->h:Landroidx/compose/ui/text/input/ImeOptions$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/text/input/ImeOptions;->i:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->i:Landroidx/compose/ui/text/input/ImeOptions;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->j:Ljava/util/ArrayList;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lx60;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->k:Lkotlin/Lazy;

    new-instance p1, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->m:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/inputmethod/EditorInfo;)Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;
    .locals 14

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v1, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    iget-wide v2, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->i:Landroidx/compose/ui/text/input/ImeOptions;

    iget v4, v0, Landroidx/compose/ui/text/input/ImeOptions;->e:I

    iget-boolean v5, v0, Landroidx/compose/ui/text/input/ImeOptions;->a:Z

    iget v6, v0, Landroidx/compose/ui/text/input/ImeOptions;->d:I

    sget-object v7, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/text/input/ImeAction;->d:I

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v4, v7, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v11, v12

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    move v11, v13

    goto :goto_0

    :cond_2
    sget v7, Landroidx/compose/ui/text/input/ImeAction;->e:I

    if-ne v4, v7, :cond_3

    move v11, v10

    goto :goto_0

    :cond_3
    sget v7, Landroidx/compose/ui/text/input/ImeAction;->i:I

    if-ne v4, v7, :cond_4

    const/4 v11, 0x5

    goto :goto_0

    :cond_4
    sget v7, Landroidx/compose/ui/text/input/ImeAction;->h:I

    if-ne v4, v7, :cond_5

    const/4 v11, 0x7

    goto :goto_0

    :cond_5
    sget v7, Landroidx/compose/ui/text/input/ImeAction;->f:I

    if-ne v4, v7, :cond_6

    move v11, v9

    goto :goto_0

    :cond_6
    sget v7, Landroidx/compose/ui/text/input/ImeAction;->g:I

    if-ne v4, v7, :cond_7

    const/4 v11, 0x4

    goto :goto_0

    :cond_7
    sget v7, Landroidx/compose/ui/text/input/ImeAction;->j:I

    if-ne v4, v7, :cond_1d

    :goto_0
    iput v11, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v4, v0, Landroidx/compose/ui/text/input/ImeOptions;->f:Landroidx/compose/ui/text/input/PlatformImeOptions;

    if-eqz v4, :cond_8

    iget-object v4, v4, Landroidx/compose/ui/text/input/PlatformImeOptions;->a:Ljava/lang/String;

    if-eqz v4, :cond_8

    iput-object v4, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    :cond_8
    iget-object v4, v0, Landroidx/compose/ui/text/input/ImeOptions;->g:Landroidx/compose/ui/text/intl/LocaleList;

    sget-object v7, Landroidx/compose/ui/text/intl/LocaleList;->d:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/text/intl/LocaleList;->e:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iput-object v8, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    goto :goto_2

    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v4, Landroidx/compose/ui/text/intl/LocaleList;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/text/intl/Locale;

    iget-object v11, v11, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    new-array v4, v12, [Ljava/util/Locale;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Locale;

    array-length v7, v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Locale;

    new-instance v7, Landroid/os/LocaleList;

    invoke-direct {v7, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v7, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    :goto_2
    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->c:I

    if-ne v6, v4, :cond_b

    :goto_3
    move v9, v13

    goto :goto_4

    :cond_b
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->d:I

    if-ne v6, v4, :cond_c

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v7, -0x80000000

    or-int/2addr v4, v7

    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_3

    :cond_c
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->e:I

    if-ne v6, v4, :cond_d

    move v9, v10

    goto :goto_4

    :cond_d
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->f:I

    if-ne v6, v4, :cond_e

    goto :goto_4

    :cond_e
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->g:I

    if-ne v6, v4, :cond_f

    const/16 v9, 0x11

    goto :goto_4

    :cond_f
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->h:I

    if-ne v6, v4, :cond_10

    const/16 v9, 0x21

    goto :goto_4

    :cond_10
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->i:I

    if-ne v6, v4, :cond_11

    const/16 v9, 0x81

    goto :goto_4

    :cond_11
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->j:I

    if-ne v6, v4, :cond_12

    const/16 v9, 0x12

    goto :goto_4

    :cond_12
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->k:I

    if-ne v6, v4, :cond_1c

    const/16 v9, 0x2002

    :goto_4
    iput v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v5, :cond_13

    and-int/lit8 v4, v9, 0x1

    if-ne v4, v13, :cond_13

    const/high16 v4, 0x20000

    or-int/2addr v4, v9

    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v4, v0, Landroidx/compose/ui/text/input/ImeOptions;->e:I

    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/text/input/ImeAction;->d:I

    if-ne v4, v5, :cond_13

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v4, v5

    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_13
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v4, v13

    if-ne v4, v13, :cond_17

    iget v4, v0, Landroidx/compose/ui/text/input/ImeOptions;->b:I

    sget-object v5, Landroidx/compose/ui/text/input/KeyboardCapitalization;->b:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/text/input/KeyboardCapitalization;->d:I

    if-ne v4, v5, :cond_14

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_5

    :cond_14
    sget v5, Landroidx/compose/ui/text/input/KeyboardCapitalization;->e:I

    if-ne v4, v5, :cond_15

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_5

    :cond_15
    sget v5, Landroidx/compose/ui/text/input/KeyboardCapitalization;->f:I

    if-ne v4, v5, :cond_16

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_16
    :goto_5
    iget-boolean v0, v0, Landroidx/compose/ui/text/input/ImeOptions;->c:Z

    if-eqz v0, :cond_17

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v4, 0x8000

    or-int/2addr v0, v4

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_17
    sget-object v0, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    const/16 v0, 0x20

    shr-long v4, v2, v0

    long-to-int v0, v4

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {p1, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    sget-boolean v0, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->a:Z

    if-eqz v0, :cond_1a

    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->i:I

    if-ne v6, v0, :cond_18

    goto :goto_6

    :cond_18
    sget v0, Landroidx/compose/ui/text/input/KeyboardType;->j:I

    if-ne v6, v0, :cond_19

    goto :goto_6

    :cond_19
    invoke-static {p1, v13}, Landroidx/core/view/inputmethod/EditorInfoCompat;->b(Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->a(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_7

    :cond_1a
    :goto_6
    invoke-static {p1, v12}, Landroidx/core/view/inputmethod/EditorInfoCompat;->b(Landroid/view/inputmethod/EditorInfo;Z)V

    :goto_7
    sget-object v0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->a()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat;->l(Landroid/view/inputmethod/EditorInfo;)V

    :goto_8
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->i:Landroidx/compose/ui/text/input/ImeOptions;

    iget-boolean v4, p1, Landroidx/compose/ui/text/input/ImeOptions;->c:Z

    new-instance v3, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V

    iget-object v5, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->e:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v6, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->f:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v7, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->g:Landroidx/compose/ui/platform/ViewConfiguration;

    new-instance v1, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/InputEventCallback2;ZLandroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1c
    const-string p0, "Invalid Keyboard Type"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1d
    const-string p0, "invalid ImeAction"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8
.end method
