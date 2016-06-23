.class public Lcom/android/systemui/statusbar/policy/MinitClock;
.super Landroid/widget/LinearLayout;
.source "MinitClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;
    }
.end annotation


# static fields
.field private static final THREEMINIT:Ljava/lang/String; = "http://threeminit.com"

.field static final UPDATE_CLOCK:Ljava/lang/String; = "three.minit.SETTINGS_CHANGED"


# instance fields
.field private final DEFAULT_CLOCK:Ljava/lang/String;

.field private location:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "15,#ffffffff,Hour [24],HH,/system/fonts/Roboto-Light.ttf,RobotoLight,17;15,#ffffffff,:,:,/system/fonts/Roboto-Light.ttf,RobotoLight,17;15,#ffffffff,Minutes,mm,/system/fonts/Roboto-Light.ttf,RobotoLight,17"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->DEFAULT_CLOCK:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    .line 37
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->location:I

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitClock$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setup()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "15,#ffffffff,Hour [24],HH,/system/fonts/Roboto-Light.ttf,RobotoLight,17;15,#ffffffff,:,:,/system/fonts/Roboto-Light.ttf,RobotoLight,17;15,#ffffffff,Minutes,mm,/system/fonts/Roboto-Light.ttf,RobotoLight,17"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->DEFAULT_CLOCK:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    .line 37
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->location:I

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitClock$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    const-string v0, "http://threeminit.com"

    const-string v1, "position"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->location:I

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setup()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "15,#ffffffff,Hour [24],HH,/system/fonts/Roboto-Light.ttf,RobotoLight,17;15,#ffffffff,:,:,/system/fonts/Roboto-Light.ttf,RobotoLight,17;15,#ffffffff,Minutes,mm,/system/fonts/Roboto-Light.ttf,RobotoLight,17"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->DEFAULT_CLOCK:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    .line 37
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->location:I

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitClock$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    const-string v0, "http://threeminit.com"

    const-string v1, "position"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->location:I

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setup()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MinitClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitClock;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MinitClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitClock;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->loadItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MinitClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitClock;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->updateViews()V

    return-void
.end method

.method private loadItems()V
    .locals 18

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clock_layout_string"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 109
    .local v14, "in":Ljava/lang/String;
    if-eqz v14, :cond_0

    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    const-string v14, "15,#ffffffff,Hour [24],HH,/system/fonts/Roboto-Light.ttf,RobotoLight,17;15,#ffffffff,:,:,/system/fonts/Roboto-Light.ttf,RobotoLight,17;15,#ffffffff,Minutes,mm,/system/fonts/Roboto-Light.ttf,RobotoLight,17"

    .line 113
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->removeAllViews()V

    .line 114
    const-string v1, ";"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, "item":[Ljava/lang/String;
    move-object v11, v15

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    aget-object v12, v11, v13

    .line 117
    .local v12, "i":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 118
    .local v16, "k":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    .line 119
    new-instance v1, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v5, v16, v2

    const/4 v2, 0x2

    aget-object v6, v16, v2

    const/4 v2, 0x3

    aget-object v7, v16, v2

    const/4 v2, 0x4

    aget-object v8, v16, v2

    const/4 v2, 0x5

    aget-object v9, v16, v2

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;-><init>(Lcom/android/systemui/statusbar/policy/MinitClock;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MinitClock;->addView(Landroid/view/View;)V

    .line 116
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 121
    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v5, v16, v2

    const/4 v2, 0x2

    aget-object v6, v16, v2

    const/4 v2, 0x3

    aget-object v7, v16, v2

    const/4 v2, 0x4

    aget-object v8, v16, v2

    const/4 v2, 0x5

    aget-object v9, v16, v2

    const/4 v2, 0x6

    aget-object v10, v16, v2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;-><init>(Lcom/android/systemui/statusbar/policy/MinitClock;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MinitClock;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 124
    .end local v12    # "i":Ljava/lang/String;
    .end local v16    # "k":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private setLocation()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_location_int"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, "loc":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_show_int"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 82
    .local v1, "show":Ljava/lang/Boolean;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->location:I

    if-eq v0, v2, :cond_2

    .line 83
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/MinitClock;->setVisibility(I)V

    .line 88
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/MinitClock;->setVisibility(I)V

    .line 90
    :cond_0
    return-void

    .end local v1    # "show":Ljava/lang/Boolean;
    :cond_1
    move v2, v3

    .line 80
    goto :goto_0

    .line 85
    .restart local v1    # "show":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/MinitClock;->setVisibility(I)V

    goto :goto_1
.end method

.method private setup()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setOrientation(I)V

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->loadItems()V

    .line 59
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->updateViews()V

    .line 61
    return-void
.end method

.method private updateViews()V
    .locals 6

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    .line 97
    .local v1, "j":Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->update(Ljava/util/Calendar;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "j":Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 130
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    if-nez v1, :cond_0

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "three.minit.SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setLocation()V

    .line 142
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    .line 151
    :cond_0
    return-void
.end method

.method public updateSettings()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->loadItems()V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->updateViews()V

    .line 104
    return-void
.end method
