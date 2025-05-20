using UnityEngine;
using TMPro;

public class TouchableButton3D : MonoBehaviour
{
    public Material selectedMaterial;
    public Renderer targetRenderer;
    public TextMeshProUGUI counterText;

    private static int totalSelected = 0;
    private static TextMeshProUGUI sharedCounterText;
    private bool isSelected = false;

    void Start()
    {
        if (targetRenderer == null)
            targetRenderer = GetComponent<Renderer>();

        if (sharedCounterText == null && counterText != null)
        {
            sharedCounterText = counterText;
            UpdateCounter();
        }
    }

    void OnMouseDown()
    {
        if (isSelected) return;

        if (targetRenderer != null && selectedMaterial != null)
        {
            Material[] newMaterials = new Material[targetRenderer.materials.Length];

            for (int i = 0; i < newMaterials.Length; i++)
            {
                newMaterials[i] = selectedMaterial;
            }

            targetRenderer.materials = newMaterials;
        }

        isSelected = true;
        totalSelected++;
        UpdateCounter();
    }

    private void UpdateCounter()
    {
        if (sharedCounterText != null)
            sharedCounterText.text = $"{totalSelected} de 5";
    }
}
