{
   services.pipewire = {
     enable = true;

     pulse.enable = true;

     alsa.enable = true;
     alsa.support32Bit = true;

     jack.enable = true;
     wireplumber.enable = true;
   };

   security.rtkit.enable = true;
}
